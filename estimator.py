from GNN import GNNEncoder
from torcheval.metrics.functional import binary_recall, binary_precision, binary_accuracy
import numpy as np
import torch
from sklearn.base import BaseEstimator

device = 'cuda' if torch.cuda.is_available() else 'cpu'
class GNNEstimator(BaseEstimator):
    def __init__(self, node_vocab_size, epochs=50, n_steps=2, n_message_passes=3, num_heads=5, predictor="MLP", node_hidden_size=64):
        self.node_hidden_size = node_hidden_size
        self.n_steps = n_steps
        self.n_message_passes = n_message_passes
        self.num_heads = num_heads
        self.predictor = predictor
        self.epochs = epochs
        self.node_vocab_size = node_vocab_size
        self.model = GNNEncoder(
            node_vocab_size=self.node_vocab_size,
            node_hidden_size=self.node_hidden_size,
            n_message_passes=self.n_message_passes,
            n_steps=self.n_steps,
            num_heads=self.num_heads,
            predictor=self.predictor
        ).to(device=torch.device(device))
        self.optimizer = torch.optim.AdamW(self.model.parameters())

    def fit(self, graphs, targets):
        for epoch in range(self.epochs):
            self.model.train()
            for graph, label in zip(graph, target):
                graph = graph.to(device=device)
                label = torch.tensor(label)
                loss = self.model.get_loss(graph, label)
                optimizer.zero_grad()
                loss.backward()
                grad_clip = torch.nn.utils.clip_grad_norm_(
                    model.parameters(), max_norm=400.0
                )
                epoch_grad_clip.append(grad_clip.cpu().data.numpy())
                optimizer.step()
        return self

    def predict(self, X):
        """ A reference implementation of a predicting function.

        Parameters
        ----------
        X : {array-like, sparse matrix}, shape (n_samples, n_features)
            The training input samples.

        Returns
        -------
        y : ndarray, shape (n_samples,)
            Returns an array of ones.
        """
        model.eval()
        output_arr = []
        for graph in X:
            graph = graph.to(device=device)
            with torch.no_grad():
                output, _ = model(graph)
            output = output.item().detach().cpu()
            output_arr.append(output)
        output_arr = np.array(output_arr)
        return output_arr

    def score(self, graphs, targets):
        self.mocel.eval()
        predictions = []
        truth_labels = []
        for graph, label in zip(graphs, targets):
            truth_labels.append(torch.tensor(label))
            with torch.no_grad():
                output, _ = model(graph)
            output = output.detach().cpu()
            predictions.append(output)
        truth_labels = torch.concatenate(truth_labels)
        predictions = torch.squeeze(predictions, dim=1)
        accuracy = binary_accuracy(predictions, truth_labels)
        return accuracy
