import argparse
import collections
import time

import numpy as np
import torch

from dataset_generator import DataraceDataset
from torch.utils.data import DataLoader
from torcheval.metrics.functional import binary_recall, binary_precision, binary_accuracy, binary_f1_score
from GNN import GNNEncoder
from GNN_block import GNNBlock
from CombinedEncoder import CombinedEncoder
import pickle
import matplotlib.pyplot as plt
from dgl.data.utils import load_graphs
import json
from balance_sampler import BalancedSampler

import pandas as pd
import os
import dgl
from  torch.optim.lr_scheduler import ReduceLROnPlateau

device = 'cuda' if torch.cuda.is_available() else 'cpu'
print(device)
rf = open("runs_result.txt", "a+")
with open("drb_vocabs", "rb") as f:
        vocab = pickle.load(f)

def model_init(n_mp=6, n_steps=2, hidden_nodes=64, inference="graph", num_heads=4):
    # if inference=="block" or inference=="line":
    if os.path.isfile("llm_prompts_v2.json"):
        model = CombinedEncoder(
            node_vocab_size=len(vocab) + 1,
            node_hidden_size=hidden_nodes,
            n_message_passes=n_mp,
            n_steps=n_steps,
            num_heads=num_heads
        ).to(device=torch.device(device))
    else:
        model = GNNBlock(
            node_vocab_size=len(vocab) + 1,
            node_hidden_size=hidden_nodes,
            n_message_passes=n_mp,
            n_steps=n_steps,
            num_heads=num_heads
        ).to(device=torch.device(device))
    # else:
    #     model = GNNEncoder(
    #         # Add one to the vocab size to accomodate for the out-of-vocab element.
    #         node_vocab_size=len(vocab) + 1,
    #         node_hidden_size=hidden_nodes,
    #         # etypes = [('0', '0', '0'), ('0', '1', '1'), ('0', '2', '0'), ('1', '1', '0'), ('2', '1', '0')],
    #         n_message_passes=n_mp,
    #         n_steps=n_steps,
    #         num_heads=num_heads,
    #         inference=inference
    #     ).to(device=torch.device(device))
    # optimizer = torch.optim.AdamW(model.parameters(), lr=1e-5, weight_decay=0.0001, amsgrad=True)
    optimizer = torch.optim.AdamW(model.parameters(), lr=1e-4, amsgrad=True)
    return model, optimizer

def pretrain_data_init(inference="graph"):
    if inference=="graph":
        train_set = DataraceDataset("dataracebench_trans_noarith_homo_augment_graphs_v14.bin",
                                   "dataracebench_trans_noarith_homo_augment_labels_v14")
    elif inference=="line":
        train_set = DataraceDataset("dataracebench_homo_node_graphs.bin",
                                   "dataracebench_homo_node_labels")
    else:
        train_set = DataraceDataset("dataracebench_homo_node_graphs.bin",
                                   "dataracebench_homo_node_labels")

    train_loader = DataLoader(
                        train_set,
                        batch_size=2,
                        shuffle=True,
                        num_workers=0,
                        collate_fn=train_set.collate_fn
                    )
    return train_loader
        

def data_init(inference="graph"):
    prompts_file = None
    # if os.path.isfile("llm_prompts_v2.json"):
    #     prompts_file = "llm_prompts_v2.json"
    # train_set = DataraceDataset("homograph_graphs.bin",
    #                             "homograph_labels",
    #                             prompts_file)
    if os.path.isfile("drb_prompts.json"):
        prompts_file = "drb_prompts.json"
    # if os.path.isfile("three_bench_graph_names"):
    #     names_file = "three_bench_graph_names"
    names_file=None
    train_set = DataraceDataset("drb_graphs.bin",
                                "drb_graph_labels",
                                prompts_file,
                                names_file)
    test_set = None
    # train_set.split()
    return train_set, test_set

def plot_result(loss, accuracy=None, precision=None, recall=None, num_epoch=60, title="Result"):
    plt.figure(figsize=(12, 8))
    if accuracy:
        plt.subplot(2, 2, 1)
    plt.plot(np.arange(num_epoch), loss)
    plt.xlabel('Epochs')
    plt.ylabel('Loss')

    if precision:
        plt.subplot(2, 2, 2)
        plt.plot(np.arange(num_epoch), precision)
        plt.xlabel('Epochs')
        plt.ylabel('Precision ')

    if accuracy:
        plt.subplot(2, 2, 3)
        plt.plot(np.arange(num_epoch), accuracy)
        plt.xlabel('Epochs')
        plt.ylabel('Accuracy ')

    if recall:
        plt.subplot(2, 2, 4)
        plt.plot(np.arange(num_epoch), recall)
        plt.xlabel('Epochs')
        plt.ylabel('Recall ')

    plt.savefig(title)

def model_val(data_loader, model, run_iter, plot=False):
    val_acc = []
    val_precision = []
    val_recall = []
    val_losses = []
    val_graphs, val_labels = data_loader.dataset.get_test_set()
    val_labels_for_loss = val_labels.to(device=device)
    model.eval()
    data_loader.dataset.train = False
    predictions = []
    val_loss = 0
    for graph, val_label in zip(val_graphs, val_labels_for_loss):
        graph = graph.to(device=device)
        with torch.no_grad():
            output, _ = model(graph)
            val_loss += model.get_loss(graph, val_label.unsqueeze(-1))
        output = output.detach().cpu()
        predictions.append(output)

    val_losses.append(val_loss/len(val_labels_for_loss))
    predictions = torch.concatenate(predictions)

    accuracy, precision, recall = metrics(val_labels, predictions)
    val_acc.append(accuracy)
    val_precision.append(precision)
    val_recall.append(recall)
    train_loader.dataset.train = True
    if plot:
        plot_result(val_losses, val_acc, val_precision, val_recall, "Model Validation Results at run {}".format(run_iter))

def step(graph, label, prompt, model, optimizer):
    if inference == "graph":
        _, graph_pred, _ = model(graph, None, prompt)
        # graph_pred = torch.squeeze(graph_pred, dim=1)
        loss = model.loss_fn(graph_pred, label)
        if not torch.isfinite(loss):
            print(loss)
    else:
        block_labels = []
        block_sets = []
        sample_sets = []
        sample_labels = []
        sample_targets = []
        targets = []
        for i, block_label in enumerate(label[0].items()):
            block_name, label = block_label[0], block_label[1]
            if inference == "block":
                mask = graph.ndata["block_name"] == block_name
            elif inference == "line":
                mask = graph.ndata["line"] == int(block_name)
            node_idx = graph.nodes()[mask]
            if label == 1:
                block_sets.append(node_idx)
                block_labels.append(label)
                targets.append(prompt["targets"][block_name])
            else:
                sample_sets.append(node_idx)
                sample_labels.append(label)
                sample_targets.append(prompt["targets"][block_name])
        num_pos += len(block_sets)
        k = 2 - len(block_sets)

        if k > 0 and len(sample_sets) > 0:
            if len(sample_sets) <= k:
                block_sets = block_sets + sample_sets
                block_labels += sample_labels
                targets += sample_targets
                num_neg += len(sample_sets)
            else:
                sample_idx = np.random.choice(len(sample_sets), k, replace=False)
                num_neg += k
                for idx in sample_idx:
                    block_sets.append(sample_sets[idx])
                    block_labels.append(sample_labels[idx])
                    targets.append(sample_targets[idx])
        if os.path.isfile("llm_prompts.json"):
            graph_pred, block_preds, cluster_loss = model(graph, block_sets, prompt, targets)
        else:
            graph_pred, block_preds, cluster_loss = model(graph, block_sets)
        block_labels = torch.tensor(block_labels, device=device, dtype=torch.float)
        global_label = torch.tensor([1], device=device, dtype=torch.float) if (block_labels==1).any() else torch.tensor([0], device=device, dtype=torch.float)
        # graph_pred, _ = model(graph)
        loss = model.combine_loss(graph_pred, global_label, block_preds, block_labels, cluster_loss)
    optimizer.zero_grad()
    loss.backward()
    grad_clip = torch.nn.utils.clip_grad_norm_(
        model.parameters(), max_norm=100.0
    )
    optimizer.step()
    return loss.cpu().data.numpy() 

def train(data_loader, model, optimizer, num_epoch, break_iter, run_iter, plot=False, validation=False, inference="graph", isSample=False):
    total_time = 0
    train_loss = []
    scheduler = ReduceLROnPlateau(optimizer, 'min')
    start = time.time()
    for epoch in range(num_epoch):
        losses = []
        model.train()
        for i, data_batch in enumerate(data_loader):
            if data_batch is None:
                continue
            if isSample:
                graphs, labels, prompts, _ = data_batch
                for graph, label, prompt in zip(dgl.unbatch(graphs), labels, prompts):
                    graph = graph.to(device=device)
                    label = torch.tensor([label], device=device, dtype=float)
                    if graph.num_nodes() > 75000:
                        continue
                    loss = step(graph, label, prompt, model, optimizer)
                losses.append(loss)
                break
            else:
                graph, label, prompt, _ = data_batch
                if graph.num_nodes() > 75000:
                        continue
                graph = graph.to(device=device)
                label = torch.tensor(label, device=device, dtype=float)
                loss = step(graph, label, prompt[0], model, optimizer)
                losses.append(loss)
        avg_loss = np.mean(losses)
        scheduler.step(avg_loss)
        train_loss.append(avg_loss)
        if validation:
            model_val(data_loader, model, run_iter, plot)
    
    total_time = time.time() - start
    print(
        f"  Whole {'training' if train else 'validation'} took: "
        f"{total_time}"
    )

    if plot:
        plot_result(train_loss, num_epoch=num_epoch, title="Train Loss at run {}".format(run_iter))
    return model

def train_procedure(train_set, model, optimizer, num_epoch, run_iter, inference="graph", ensemble=True):
    # sampler = BalancedSampler(train_set, batch_size=230)
    # data_loader = DataLoader(
    #         train_set,
    #         batch_size=230,
    #         sampler=sampler,
    #         collate_fn=train_set.collate_fn
    #     )
    sampler = None
    if sampler == None:  
        data_loader = DataLoader(
                    train_set,
                    shuffle=True,
                    collate_fn=train_set.collate_fn
                )
        model = train(data_loader, model, optimizer, num_epoch, 300, run_iter=run_iter, inference=inference, plot=True)
    else:
        data_loader = DataLoader(
            train_set,
            batch_size=230,
            sampler=sampler,
            collate_fn=train_set.collate_fn
        )
        model = train(data_loader, model, optimizer, num_epoch, 300, run_iter=run_iter, inference=inference, plot=True, isSample=True)
    return model, None

def test(train_set, model, cross_val=False, ensemble=False, model_importance=None, inference="graph"):
    predictions = []
    total_time = 0
    data_loader = DataLoader(
            train_set,
            batch_size=1,
            shuffle=False,
            num_workers=0,
            collate_fn=train_set.collate_fn
        )
    model.eval()
    if cross_val:
        val_graphs, truth_labels, prompts, names = data_loader.dataset.get_test_set(inference=inference)
        labels = []
        file_names = []
        for graph, label, prompt, name in zip(val_graphs, truth_labels, prompts, names):
            if graph.num_nodes() > 75000:
                print("skip")
                continue
            graph = graph.to(device=device)
            if graph is None:
                continue
            if inference == "graph":
                labels.append(label)
                with torch.no_grad():
                    _, output, _ = model(graph, None, prompt)
                output = output.detach().cpu()
            else:
                block_sets = []
                targets = []
                for i, block_label in enumerate(label.items()):
                    block_name, label = block_label[0], block_label[1]
                    if inference == "block":
                        mask = graph.ndata["block_name"]==block_name
                    else:
                        mask = graph.ndata["line"]== int(block_name)
                    node_idx = graph.nodes()[mask]
                    block_sets.append(node_idx)
                    labels.append(label)
                    targets.append(prompt["targets"][block_name])
                with torch.no_grad():
                    if os.path.isfile("llm_prompts.json"):
                        _, block_preds, _= model(graph, block_sets, prompt, targets)
                    else:
                        _, block_preds, _= model(graph, block_sets)
                output = block_preds.detach().cpu()
            predictions.append(output)
            file_names.append(name)
    else:
        truth_labels = []
        for graph, label in data_loader:
            truth_labels.append(torch.tensor(label))
            graph = graph.to(device=device)
            start_time = time.time()
            with torch.no_grad():
                output, _ = model(graph)
            end_pred_time = time.time()-start_time
            total_time+=end_pred_time
            output = output.detach().cpu()
            predictions.append(output)
        truth_labels = torch.concatenate(truth_labels)
    # print("total inference time: ",total_time)

    predictions = torch.concatenate(predictions)
    truth_labels =  torch.tensor(labels, dtype=torch.float)
    accuracy, precision, recall = metrics(truth_labels, predictions, names=None)
    return accuracy, precision, recall

def metrics(truth_labels, predictions, names):
    rounded_predictions = torch.where(predictions < 0.5, 0, 1)
    confusion_vector = rounded_predictions / truth_labels
    bool_result = rounded_predictions==truth_labels
    mispredictions = [i for i in range(len(bool_result)) if bool_result[i]==False]
    # Element-wise division of the 2 tensors returns a new tensor which holds a
    # unique value for each case:
    #   1     where prediction and truth are 1 (True Positive)
    #   inf   where prediction is 1 and truth is 0 (False Positive)
    #   nan   where prediction and truth are 0 (True Negative)
    #   0     where prediction is 0 and truth is 1 (False Negative)
    fp = confusion_vector == float('inf')
    fn = confusion_vector == 0
    if names:
        print("----------------------\n")
        print("false positive programs: \n")
        for idx, val in enumerate(fp):
            if val:
                print(names[idx])
                print("\n")
        print("----------------------\n")
        print("false negative programs: \n")        
        for idx, val in enumerate(fn):
            if val:
                print(names[idx])
                print("\n")
    true_positives = torch.sum(confusion_vector == 1).item()
    false_positives = torch.sum(fp).item()
    true_negatives = torch.sum(torch.isnan(confusion_vector)).item()
    false_negatives = torch.sum(fn).item()
    print("----------------------\n")
    print("true positives {}, false positive {}, true negative {}, false negatives {}".format(true_positives, false_positives, true_negatives, false_negatives))

    truth_labels = truth_labels.to(dtype=torch.int)
    accuracy = binary_accuracy(predictions, truth_labels)
    precision = binary_precision(predictions, truth_labels)
    recall = binary_recall(predictions, truth_labels)
    return accuracy, precision, recall

def NPB_test(model, inference="graph"):
    test_graphs = load_graphs("NPB.bin")[0]
    predictions = []
    inference_times = []
    model.eval()
    with open("NPB_prompt.json") as pf:
        test_prompts = json.load(pf)
    for graph, prompt in zip(test_graphs, test_prompts):
        start = time.time()
        graph = graph.to(device=device)
        if inference == "graph":
            with torch.no_grad():
                _, output, _ = model(graph, None, prompt)
            output = output.detach().cpu()
            rounded_prediction = torch.round(output)
            predictions.append(rounded_prediction)
        end = time.time()- start
        inference_times.append(end)
    print("NPB predictions result: ", predictions)
    print("NPB inference time result: ", inference_times)

def safe_div(x, y):
    if y == 0:
        return 0
    else:
        return x / y


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description='Simple Driver program that trains a GCN to predict the data race condition')
    parser.add_argument('-np', '--num-processes', help='Number of processes to use for training', type=int, default=0)
    parser.add_argument('-s', '--steps', help='Number of steps for passing message', type=int, default=3)
    parser.add_argument('-m', '--messages', help='Number of messages being passed', type=int, default=3)
    parser.add_argument('-b', '--batch-size', help='Batch size', type=int, default=4)
    parser.add_argument('-e', '--epoch', help='Epochs of training loop', type=int, default=5)
    parser.add_argument('-nr', '--runs', help='Number of runs', type=int, default=1)
    parser.add_argument('-d', '--device', type=str, help='Device to use for training', default="cpu")
    parser.add_argument('-hn', '--hidden-nodes', type=int, help='Number of hidden nodes per layers', default=64)
    parser.add_argument('-i', '--inference', type=str, help='What type of inference are being performed', default="graph")
    parser.add_argument('-k', '--k-fold', type=int, help='Number of k for cross validation. If k is 0, use indigo bench', default=0)
    parser.add_argument('-ht', '--hyperparams-tuning', type=bool, help='If we want to do training or param tuning', default=False)
    parser.add_argument('-en', '--ensemble', type=bool, help='If we want to use ensemble method', default=False)

    args = parser.parse_args()
    n_steps = args.steps
    n_message_passes = args.messages
    epochs = args.epoch
    num_runs = args.runs
    hidden_nodes = args.hidden_nodes
    inference = args.inference

    k = args.k_fold
    emsemble = args.ensemble
    print(k)
    hyperparams_tuning = args.hyperparams_tuning
    train_set, test_set = data_init(inference=inference)
    # pretrain_loader = pretrain_data_init(inference=inference)
    if hyperparams_tuning:
        train_loader = DataLoader(
            train_set,
            batch_size=2,
            shuffle=True,
            num_workers=0,
            collate_fn=train_set.collate_fn
            )
        hyper_tuning(train_loader)
        rf.close()
        exit()

    for epoch in [60]:
        all_precision = []
        all_accuracy = []
        all_recall = []
        for i in range(num_runs):
            print("Begin run {}".format(i))
            if k>0:
                if inference=="graph":
                    fold_indices = train_set.k_fold(k)
                else:
                    class_labels = []
                    for label in train_set.labels:
                        if (np.array(label)==1).any():
                            class_labels.append(1)
                        else:
                            class_labels.append(0)
                    fold_indices = train_set.k_fold(k, class_labels)
                for fold_num, (train_index, test_index) in enumerate(fold_indices):
                    print("fold num: ", fold_num+1)
                    train_set.set_train_test_folds(train_index, test_index)
                    untrained_model, optimizer = model_init(n_mp=n_message_passes, n_steps=n_steps,
                                        hidden_nodes=hidden_nodes, inference=inference)
                    trained_model, a = train_procedure(train_set, untrained_model, optimizer, num_epoch=epoch, run_iter=fold_num+11, inference=inference, ensemble=emsemble)
                    torch.save(trained_model.state_dict(), "models/drb_Combination_model.pt")
                    accuracy, precision, recall = test(train_set, trained_model, cross_val=True, inference=inference)
                    # NPB_test(trained_model)
                    all_precision.append(precision)
                    all_accuracy.append(accuracy)
                    all_recall.append(recall)
            else:
                untrained_model, optimizer = model_init(n_mp=n_message_passes, n_steps=n_steps,
                                                                hidden_nodes=hidden_nodes, inference=inference, num_heads=10)
                train_loader = DataLoader(
                    train_set,
                    batch_size=2,
                    shuffle=True,
                    num_workers=0,
                    collate_fn=train_set.collate_fn
                )
                test_loader = DataLoader(
                    test_set,
                    batch_size=1,
                    shuffle=False,
                    num_workers=0,
                    collate_fn=test_set.collate_fn
                )
                trained_model = train(train_loader, untrained_model, optimizer, epoch, i, inference)
                accuracy, precision, recall = test(test_loader, trained_model, cross_val=False)
                all_precision.append(precision)
                all_accuracy.append(accuracy)
                all_recall.append(recall)
                del trained_model, untrained_model
        
        mean_precision = np.mean(all_precision)
        mean_accuracy = np.mean(all_accuracy)
        mean_recall = np.mean(all_recall)
        print("Performance of {} runs with {} training epochs are \n".format(num_runs, epoch))
        print("Precisions: ", all_precision)
        print("Accuracy: ", all_accuracy)
        print("Recall: ", all_recall)
        print("The mean precision after {} runs with {} training epochs is {}. \n".format(num_runs, epochs, mean_precision))
        print("The mean accuracy after {} runs with {} training epochs is {}. \n".format(num_runs, epochs, mean_accuracy))
        print("The mean recall after {} runs with {} training epochs is {}. \n".format(num_runs, epochs, mean_recall))
        rf.write("Precisions: {} \n".format(all_precision))
        rf.write("The mean precision after {} runs with {} training epochs is {}. \n".format(num_runs, epochs, mean_precision))
        rf.write("Accuracy: {} \n".format(all_accuracy))
        rf.write("The mean accuracy after {} runs with {} training epochs is {}. \n".format(num_runs, epochs, mean_accuracy))
        rf.write("Recall: {} \n".format(all_recall))
        rf.write("The mean recall after {} runs with {} training epochs is {}. \n".format(num_runs, epochs, mean_recall))
        rf.write("\n")
    rf.close()
