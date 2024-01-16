import argparse
import collections
import time

import numpy as np
import torch

from dataset_generator import DataraceDataset
from torch.utils.data import DataLoader
from torcheval.metrics.functional import binary_recall, binary_precision, binary_accuracy
from GNN import GNNEncoder
from estimator import GNNEstimator
import pickle
import matplotlib.pyplot as plt
import copy
import itertools

from sklearn.model_selection import RepeatedStratifiedKFold
from sklearn.model_selection import GridSearchCV

from skopt import BayesSearchCV
from skopt.space import Categorical

import pandas as pd
device = 'cuda' if torch.cuda.is_available() else 'cpu'
rf = open("runs_result.txt", "a+")
with open("trans_noarith_vocabs_v2", "rb") as f:
        vocab = pickle.load(f)

def model_init(n_mp=6, n_steps=2, hidden_nodes=64, graph_inference=True):
    model = GNNEncoder(
        # Add one to the vocab size to accomodate for the out-of-vocab element.
        node_vocab_size=len(vocab) + 1,
        node_hidden_size=hidden_nodes,
        # etypes = [('0', '0', '0'), ('0', '1', '1'), ('0', '2', '0'), ('1', '1', '0'), ('2', '1', '0')],
        n_message_passes=n_mp,
        n_steps=n_steps,
        graph_inference=graph_inference
    ).to(device=torch.device(device))
    optimizer = torch.optim.AdamW(model.parameters(0.0001))
    return model, optimizer

def data_init(graph_inference=True):
    if graph_inference:
        # train_set = DataraceDataset("full_train_graphs",
        #                             "full_train_labels")


        # test_set = DataraceDataset("test_graphs",
        #                            "test_labels")

        test_set = DataraceDataset("indigo_trans_noarith_hetero_graphs.bin",
                                    "indigo_trans_noarith_hetero_labels")

        # train_set = DataraceDataset("dataracebench_combined_graphs.bin",
        #                            "dataracebench_combined_labels")
        train_set = DataraceDataset("dataracebench_trans_noarith_hetero_graphs_v2.bin",
                                   "dataracebench_trans_noarith_hetero_labels_v2")
    else:
        train_set = DataraceDataset("data_generator/graph_representations/dgl_dataset.bin",
                                    "data_generator/graph_representations/all_labels")

        test_set = DataraceDataset("data_generator/graph_representations/test_graphs.bin",
                                   "data_generator/graph_representations/test_labels")

    # train_set.split()
    return train_set, test_set


def train(data_loader, model, optimizer, num_epoch, run_iter, graph_inference=True):
    total_time = 0
    train_loss = []
    # val_acc = []
    # val_precision = []
    # val_recall = []
    # val_losses = []
    # val_graphs, val_labels = train_loader.dataset.get_test_set()
    # val_labels_for_loss = val_labels.to(device=device)
    for epoch in range(num_epoch):
        times = collections.defaultdict(float)
        losses = []
        epoch_grad_clip = []
        t1 = time.time()
        model.train()
        for i, data in enumerate(data_loader):
            if data is None:
                continue
            graph, labels = data
            times["get_data"] += time.time() - t1
            t1 = time.time()
            if graph.num_nodes() > 75000:
                continue
            graph = graph.to(device=device)
            labels = torch.tensor(labels, device=device)
            if not graph_inference:
                assert graph.num_nodes() == len(labels), "{} number of nodes is not equal to test_labels {}".format(
                    graph.num_nodes(), len(labels))
            loss = model.get_loss(graph, labels)
            max_mem = torch.cuda.max_memory_allocated(device=None)
            losses.append(loss.cpu().data.numpy())
            times["model_forward"] += time.time() - t1
            t1 = time.time()
            optimizer.zero_grad()
            loss.backward()
            grad_clip = torch.nn.utils.clip_grad_norm_(
                model.parameters(), max_norm=400.0
            )
            epoch_grad_clip.append(grad_clip.cpu().data.numpy())
            optimizer.step()

            times["model_backward"] += time.time() - t1
            t1 = time.time()
            if i == 200:
                break

        # model.eval()
        # train_loader.dataset.train = False
        # predictions = []
        # val_loss = 0
        # for graph, val_label in zip(val_graphs, val_labels_for_loss):
        #     graph = graph.to(device=device)
        #     with torch.no_grad():
        #         output, _ = model(graph)
        #         val_loss += model.get_loss(graph, val_label.unsqueeze(-1))
        #     output = output.detach().cpu()
        #     predictions.append(output)

        # val_losses.append(val_loss/len(val_labels_for_loss))
        # predictions = torch.concatenate(predictions)

        # accuracy, precision, recall = metrics(val_labels, predictions)
        # val_acc.append(accuracy)
        # val_precision.append(precision)
        # val_recall.append(recall)
        # train_loader.dataset.train = True
        avg_loss = np.mean(losses)
        train_loss.append(avg_loss)
        for time_epoch in times.values():
            total_time += time_epoch
    print(
        f"  Whole {'training' if train else 'validation'} took: "
        f"{total_time}"
    )
    plt.figure(figsize=(12, 8))

    plt.subplot(2, 2, 1)
    plt.plot(np.arange(num_epoch), train_loss)
    # plt.plot(np.arange(num_epoch), val_losses)
    plt.xlabel('Training epochs')
    plt.ylabel('Training Loss')

    # plt.subplot(2, 2, 2)
    # plt.plot(np.arange(num_epoch), val_precision)
    # plt.xlabel('Training epochs')
    # plt.ylabel('Validation Precision ')

    # plt.subplot(2, 2, 3)
    # plt.plot(np.arange(num_epoch), val_acc)
    # plt.xlabel('Training epochs')
    # plt.ylabel('Validation Accuracy ')

    # plt.subplot(2, 2, 4)
    # plt.plot(np.arange(num_epoch), val_recall)
    # plt.xlabel('Training epochs')
    # plt.ylabel('Validation Recall ')

    plt.savefig("Training Stats for run {}".format(run_iter))
    return model

def hyper_tuning(data_loader):
    train_graphs = []
    train_labels = []
    for i, data in enumerate(data_loader):
        if data is None:
            continue
        graph, label = data
        graph = graph.to(device=device)
        if graph.num_nodes() > 75000:
            continue
        label = torch.tensor(label, device=device)
        train_graphs.append(graph)
        train_labels.append(label)

        
    skf = RepeatedStratifiedKFold(n_splits=10, n_repeats=10, random_state = 1001)
    search_space = {
        "n_message_passes": [1,2,3,4,5,6,7,8,9],
    }
    model_estimator = GNNEstimator(node_vocab_size=len(vocab) + 1)
    gscv = GridSearchCV(estimator=model_estimator, param_grid=search_space)
    gscv.fit(train_graphs, train_labels)
    df = pd.DataFrame.from_dict(gscv.cv_results_)
    df.to_csv("estimator_result_conv_predictor.csv", index=False)

def test(data_loader, model, cross_val=False):
    model.eval()
    predictions = []
    if cross_val:
        val_graphs, truth_labels = data_loader.dataset.get_test_set()
        for graph in val_graphs:
            graph = graph.to(device=device)
            with torch.no_grad():
                output, _ = model(graph)
            output = output.detach().cpu()
            predictions.append(output)
    else:
        truth_labels = []
        for graph, label in data_loader:
            truth_labels.append(torch.tensor(label))
            graph = graph.to(device=device)
            with torch.no_grad():
                output, _ = model(graph)
            output = output.detach().cpu()
            predictions.append(output)
        truth_labels = torch.concatenate(truth_labels)
    predictions = torch.concatenate(predictions)
    accuracy, precision, recall = metrics(truth_labels, predictions)
    return accuracy, precision, recall

def metrics(truth_labels, predictions):
    #predictions = torch.argmax(predictions, dim=1)
    predictions = torch.squeeze(predictions, dim=1)
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

    true_positives = torch.sum(confusion_vector == 1).item()
    false_positives = torch.sum(confusion_vector == float('inf')).item()
    true_negatives = torch.sum(torch.isnan(confusion_vector)).item()
    false_negatives = torch.sum(confusion_vector == 0).item()

    print("true positives {}, false positive {}, true negative {}, false negatives {}".format(true_positives, false_positives, true_negatives, false_negatives))

    truth_labels = truth_labels.to(dtype=torch.int)
    accuracy = binary_accuracy(predictions, truth_labels)
    precision = binary_precision(predictions, truth_labels)
    recall = binary_recall(predictions, truth_labels)
    return accuracy, precision, recall

def safe_div(x, y):
    if y == 0:
        return 0
    else:
        return x / y


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description='Simple Driver program that trains a GCN to predict the data race condition')
    parser.add_argument('-np', '--num-processes', help='Number of processes to use for training', type=int, default=0)
    parser.add_argument('-s', '--steps', help='Number of steps for passing message', type=int, default=1)
    parser.add_argument('-m', '--messages', help='Number of messages being passed', type=int, default=8)
    parser.add_argument('-b', '--batch-size', help='Batch size', type=int, default=4)
    parser.add_argument('-e', '--epoch', help='Epochs of training loop', type=int, default=60)
    parser.add_argument('-nr', '--runs', help='Number of runs', type=int, default=1)
    parser.add_argument('-d', '--device', type=str, help='Device to use for training', default="cpu")
    parser.add_argument('-hn', '--hidden-nodes', type=int, help='Number of hidden nodes per layers', default=32)
    parser.add_argument('-i', '--graph-inference', type=bool, help='If model is doing graph inference', default=True)
    parser.add_argument('-k', '--k-fold', type=int, help='Number of k for cross validation. If k is 0, use indigo bench', default=0)
    parser.add_argument('-ht', '--hyperparams-tuning', type=bool, help='If we want to do training or param tuning', default=False)

    args = parser.parse_args()
    n_steps = args.steps
    n_message_passes = args.messages
    epochs = args.epoch
    num_runs = args.runs
    hidden_nodes = args.hidden_nodes
    graph_inference = args.graph_inference
    k = args.k_fold
    print(k)
    hyperparams_tuning = args.hyperparams_tuning

    train_set, test_set = data_init(graph_inference=graph_inference)
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
    for n_pass in [3]:
        all_precision = []
        all_accuracy = []
        all_recall = []
        for i in range(num_runs):
            print("Begin run {}".format(i))
            if k>0:
                fold_indices = train_set.k_fold(k)
                for fold_num, (train_index, test_index) in enumerate(fold_indices):
                    train_set.set_train_test_folds(train_index, test_index)
                    train_loader = DataLoader(
                        train_set,
                        batch_size=2,
                        shuffle=True,
                        num_workers=0,
                        collate_fn=train_set.collate_fn
                    )

                    untrained_model, optimizer = model_init(n_mp=n_pass, n_steps=n_steps,
                                                                hidden_nodes=hidden_nodes, graph_inference=graph_inference)
                    trained_model = train(train_loader, untrained_model, optimizer, epochs, fold_num, graph_inference)
                    accuracy, precision, recall = test(train_loader, trained_model, cross_val=True)
                    all_precision.append(precision)
                    all_accuracy.append(accuracy)
                    all_recall.append(recall)
                    del trained_model, untrained_model, train_loader
            else:
                untrained_model, optimizer = model_init(n_mp=n_pass, n_steps=n_steps,
                                                                hidden_nodes=hidden_nodes, graph_inference=graph_inference)
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
                trained_model = train(train_loader, untrained_model, optimizer, epochs, i, graph_inference)
                accuracy, precision, recall = test(test_loader, trained_model, cross_val=False)
                all_precision.append(precision)
                all_accuracy.append(accuracy)
                all_recall.append(recall)
                del trained_model, untrained_model
        

        mean_precision = np.mean(all_precision)
        mean_accuracy = np.mean(all_accuracy)
        mean_recall = np.mean(all_recall)
        print("Performance of {} with {} message passes are \n".format(num_runs, n_pass))
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
    rf.close()
