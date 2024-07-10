import pickle
import numpy
import torch
from torch.utils.data import Dataset
import dgl
from dgl.data.utils import load_graphs
from sklearn.model_selection import StratifiedKFold, LeaveOneOut, KFold
from typing import overload
import json

class DataraceDataset(Dataset):
    def __init__(self, graph_file: str, labels_file: str, prompts_file=None, transform=None):
        """
        Arguments:
            graph_file (string): The file that contains all the graphs.
            labels_file (string): The file that contains all the labels_OO.
            transform (callable, torchvision.transforms): a transform function to convert the graph
                                                to a different format.
        """
        self.test_set_idx = None
        self.train_set_idx = None
        self.graphs = None
        self.num_samples = None
        self.labels = None
        self.train = True
        self.num_train = None
        self.num_test = None
        self.isSplit = False
        self.transform = transform
        self.prompts_file = None
        if isinstance(graph_file, str):
            self.graph_file = graph_file
            self.labels_file = labels_file
            if prompts_file:
                self.prompts_file = prompts_file
            self.initialize_dataset()
        else:
            self.graphs = graph_file
            self.labels = labels_file
            if prompts_file:
                self.prompts = prompts_file
            self.num_samples = len(self.graphs)    

    def __len__(self):
        if self.isSplit:
            if self.train:
                return self.num_train
            else:
                return self.num_test
        else:
            return self.num_samples

    def __getitem__(self, idx):
        if self.isSplit:
            if self.train:
                idx = self.train_set_idx[idx]
            else:
                idx = self.test_set_idx[idx]

        graph = self.graphs[idx]
        label = self.labels[idx]
        prompt = None
        if self.prompts_file:
            prompt = self.prompts[idx]
        isList = isinstance(label, numpy.ndarray)
        if isList:
            assert len(label) == graph.num_nodes(), "number of test_labels {} does not match number of nodes {}".format(len(label), graph.num_nodes())
        if self.transform:
            graph = self.transform(graph)
        return {"graph": graph, "label": label, "prompt": prompt}

    def initialize_dataset(self):
        self.graphs, _ = load_graphs(self.graph_file)
        if self.prompts_file:
            with open(self.prompts_file) as pf:
                self.prompts = json.load(pf)
        # for i in range(len(self.graphs)):
        #     graph = self.graphs[i]
        #     print(graph.etypes)
        #     if len(graph.etypes) == 6:
        #         continue
        # del self.graphs[i]

        self.num_samples = len(self.graphs)

        with open(self.labels_file, 'rb') as labels_file:
            self.labels = pickle.load(labels_file)
        labels_file.close()

    def collate_fn(self, samples):
        samples = [sample for sample in samples if sample is not None]
        # Takes a list of graphs and makes it into one big graph that dgl operates on
        ret = None
        if samples:
            dgl_graph = dgl.batch([sample["graph"] for sample in samples])
            reward = []
            prompts = []
            for sample in samples:
                labels = sample['label']
                isList = isinstance(labels, numpy.ndarray)
                if isList:
                    for label in labels:
                        reward.append(label)
                else:
                    reward.append(labels)
                if self.prompts_file:
                    prompt = sample['prompt']
                    prompts.append(prompt)
            ret = (dgl_graph, reward, prompts)
        return ret

    def get_test_set(self, inference="block"):
        test_graphs = []
        test_labels = []
        test_prompts = []
        # numpy.random.shuffle(self.test_set_idx.indices)
        for i in self.test_set_idx:
            test_graphs.append(self.graphs[i])
            if self.prompts_file:
                test_prompts.append(self.prompts[i])
                labels = self.labels[i]
                test_labels.append(labels)
            # if inference == "graph":
            #     test_labels = numpy.concatenate((test_labels, self.labels[i]), axis=None)
            else:
                labels = self.labels[i]
                test_labels.append(labels)
                
        # if inference == "graph":
        #     test_labels = torch.from_numpy(test_labels)
        # dgl_test_graph = dgl.batch(test_graphs)
        return test_graphs, test_labels, test_prompts

    def get_all(self):
        labels = numpy.concatenate(self.labels, axis=None)
        labels = torch.from_numpy(labels)
        dgl_graph = dgl.batch(self.graphs)
        return dgl_graph, labels, self.prompts

    def split(self, seed=425443):
        self.isSplit = True
        generator = torch.Generator().manual_seed(seed)
        self.train_set_idx, self.test_set_idx = torch.utils.data.random_split(range(self.num_samples),
                                                                              [0.95, 0.05],
                                                                              generator)
        self.num_train = len(self.train_set_idx)
        self.num_test = len(self.test_set_idx)

    def k_fold(self, k=5, class_labels=None):
        # split_strat = LeaveOneOut()
        split_strat = StratifiedKFold(k, shuffle=True)
        if class_labels==None:
            class_labels = self.labels
        fold_indices = split_strat.split(self.graphs, class_labels)
        return fold_indices

    def set_train_test_folds(self, train_index, test_index):
        self.isSplit = True
        self.train_set_idx = train_index
        self.test_set_idx = test_index
        self.num_train = len(self.train_set_idx)
        self.num_test = len(self.test_set_idx)

    def subset(self, weights, num_samples):
        cpu_weights = weights.detach().cpu().numpy()
        idx = numpy.random.choice(len(self), num_samples, replace=False, p=cpu_weights)
        graphs = [self.graphs[i] for i in idx]
        labels = [self.labels[i] for i in idx]
        prompts = None
        if self.prompts_file:
            prompts = [self.prompts[i] for i in idx]
        new_set = DataraceDataset(graphs, labels, prompts)
        return new_set, idx






