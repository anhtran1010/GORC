import torch
from torch.utils.data import Sampler, DataLoader
from dataset_generator import DataraceDataset
import dgl 
class BalancedSampler(Sampler):
    def __init__(self, dataset, batch_size):
        self.dataset = dataset
        self.batch_size = batch_size
        self.indices = list(range(len(dataset)))
        
        # Split indices into positive and negative samples
        self.pos_indices = [i for i, data in enumerate(dataset) if data['label'] == 1]
        self.neg_indices = [i for i, data in enumerate(dataset) if data['label'] == 0]

        assert len(self.pos_indices) > 0 and len(self.neg_indices) > 0, "Dataset must contain both positive and negative samples"

    def __iter__(self):
        batch = []
        while len(batch) < self.batch_size:
            pos_sample = torch.randint(0, len(self.pos_indices), (1,)).item()
            neg_sample = torch.randint(0, len(self.neg_indices), (1,)).item()
            batch.append(self.pos_indices[pos_sample])
            batch.append(self.neg_indices[neg_sample])
        return iter(batch)

    def __len__(self):
        return len(self.indices)

