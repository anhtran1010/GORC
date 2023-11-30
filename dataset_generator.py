import pickle
import numpy
import torch
from torch.utils.data import Dataset
import dgl
from dgl.data.utils import load_graphs

class DataraceDataset(Dataset):
    def __init__(self, graph_file, labels_file, transform=None):
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
        self.graph_file = graph_file
        self.num_samples = None
        self.labels_file = labels_file
        self.labels = None
        self.transform = transform
        self.train = True
        self.num_train = None
        self.num_test = None
        self.isSplit = False
        self.initialize_dataset()

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
        isList = isinstance(label, numpy.ndarray)
        if isList:
            assert len(label) == graph.num_nodes(), "number of test_labels {} does not match number of nodes {}".format(len(label), graph.num_nodes())
        if self.transform:
            graph = self.transform(graph)
        return {"graph": graph, "label": label}

    def initialize_dataset(self):
        self.graphs, _ = load_graphs(self.graph_file)
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
            for sample in samples:
                labels = sample['label']
                isList = isinstance(labels, numpy.ndarray)
                if isList:
                    for label in labels:
                        reward.append(label)
                else:
                    reward.append(labels)
            ret = (dgl_graph, reward)
        return ret

    def get_test_set(self):
        test_graphs = []
        test_labels = []
        # numpy.random.shuffle(self.test_set_idx.indices)
        for i in self.test_set_idx:
            test_graphs.append(self.graphs[i])
            test_labels = numpy.concatenate((test_labels, self.labels[i]), axis=None)
        test_labels = torch.from_numpy(test_labels)
        # dgl_test_graph = dgl.batch(test_graphs)
        return test_graphs, test_labels

    def get_all(self):
        labels = numpy.concatenate(self.labels, axis=None)
        labels = torch.from_numpy(labels)
        dgl_graph = dgl.batch(self.graphs)
        return dgl_graph, labels

    def split(self, seed=425443):
        self.isSplit = True
        generator = torch.Generator().manual_seed(seed)
        self.train_set_idx, self.test_set_idx = torch.utils.data.random_split(range(self.num_samples),
                                                                              [0.95, 0.05],
                                                                              generator)
        self.num_train = len(self.train_set_idx)
        self.num_test = len(self.test_set_idx)

    def k_fold(self, k=5):
        fold_size = int(self.num_samples/k)
        fold_index = torch.split(torch.arange(self.num_samples), fold_size)
        return fold_index

    def set_train_test_folds(self, train_index, test_index):
        self.isSplit = True
        self.train_set_idx = train_index
        self.test_set_idx = test_index
        self.num_train = len(self.train_set_idx)
        self.num_test = len(self.test_set_idx)







