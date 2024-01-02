import dgl
import numpy as np
import torch
from dgl.data import DGLDataset
import pickle

def process_networkx_graph(
    graph,
    vocab,
    node_feature_list=["text", "type"],
    edge_feature_list=["flow", "position"],
):
    """
    Handles all of the requirements of taking a networkx graph and converting it into a
    dgl graph
    Inputs:
        - graph: the networkx graph
        - vocab: the vocabulary, a mapping from word to index.
        - node_feature_list: a list of textual features from the networkx node that we want to make sure
            are featurizable into a vector.
        - edge_feature_list: a list of textual features from the networkx edges that we want to make sure
            are featurizable into a vector.
    """
    update_graph_with_vocab(graph.nodes, node_feature_list, vocab)
    update_graph_with_vocab(graph.edges, edge_feature_list, vocab)

    dgl_graph = fast_networkx_to_dgl_heterogeneous(graph)
    return dgl_graph


def fast_networkx_to_dgl(
    graph, node_attrs=["text_idx", "type"], edge_attrs=["flow", "position"]
):
    """
    Takes a networkx graph and its given node attributes and edge attributes
    and converts it corresponding dgl graph
    Inputs:
        - graph: the networkx graph
        - node_attrs: node attributes to convert
        - edge_attrs: edge attributes to convert
    """

    edges = [edge for edge in graph.edges()]
    dgl_graph = dgl.graph(edges, num_nodes=graph.number_of_nodes())

    for feat in edge_attrs:
        edge_assigns = torch.tensor(
            [val[-1] for val in graph.edges(data=feat)], dtype=torch.int64
        )
        dgl_graph.edata[feat] = edge_assigns

    for feat in node_attrs:
        node_assigns = torch.tensor(
            [val[-1] for val in graph.nodes(data=feat)], dtype=torch.int64
        )
        dgl_graph.ndata[feat] = node_assigns

    return dgl_graph

def fast_networkx_to_dgl_heterogeneous(graph, node_attrs=["text_idx"], edge_attrs=["position"]):
    data_dict = {}
    edge_feat_dict = {}
    node_feat_dict = {
        "0": [], 
        "1": [],
        "2": [],
        "3": []
        }
    node_type_idx = {
        "0": 0, 
        "1": 0,
        "2": 0,
        "3": 0
        }
    nodes = graph.nodes()
    for node in nodes:
        node_type = str(nodes[node]['type'])
        if node_type in node_type_idx:
            nodes[node]['idx'] = node_type_idx[node_type]
            node_type_idx[node_type] += 1
        else:
            node_type_idx[node_type] = 0
            nodes[node]['idx'] = node_type_idx[node_type]

        if node_type in node_feat_dict:
            node_feat_dict[node_type].append(nodes[node]['text_idx'])
        else:
            node_feat_dict[node_type] = [nodes[node]['text_idx']]

    for edge, position in zip(graph.edges(data="flow"), graph.edges(data="position")):
        src_node = nodes[edge[0]]
        src_node_idx = src_node['idx']
        dst_node = nodes[edge[1]]
        dst_node_idx = dst_node['idx']
        edge_type = str(edge[2])
        src_node_type = str(src_node['type'])
        dst_node_type = str(dst_node['type'])
        pos_type = position[-1]
        if (src_node_type, edge_type, dst_node_type) in data_dict:
            data_dict[(src_node_type, edge_type, dst_node_type)].append((src_node_idx, dst_node_idx))
            edge_feat_dict[(src_node_type, edge_type, dst_node_type)].append(pos_type)
        else:
            data_dict[(src_node_type, edge_type, dst_node_type)] = [(src_node_idx, dst_node_idx)]
            edge_feat_dict[(src_node_type, edge_type, dst_node_type)] = [pos_type]
    dgl_graph = dgl.heterograph(data_dict)
    for key, value in edge_feat_dict.items():
        edge_feat_dict[key] = torch.tensor(value)
    dgl_graph.edata["position"] = edge_feat_dict

    for key, value in node_feat_dict.items():
        node_feat_dict[key] = torch.tensor(value)
    dgl_graph.ndata["text_idx"] = node_feat_dict
    return dgl_graph

def update_graph_with_vocab(graph_fn, features, vocab):
    """
    Given a networkx attribute (function) and features update it with a vocab if possible.
    If it cannot be updated, the features should already be numerical features.
    Inputs:
        - graph_fn: a networkx graph function (describing nodes or edges)
        - features: the feature from the function that should be updated
        - vocab: A dict mapping text to int
    """

    for feature_name in features:
        curr_vocab = None
        if feature_name in vocab:
            curr_vocab = vocab[feature_name]
        for graph_item in graph_fn(data=feature_name):
            feature = graph_item[-1]
            idx = graph_item[0]

            if feature_name in vocab:
                # Lookup vocab item, or map to out-of-vocab index if item is not
                # found.
                vocab_index = curr_vocab.get(feature, len(curr_vocab))
                update_networkx_feature(
                    graph_fn, idx, f"{feature_name}_idx", vocab_index
                )
            else:
                assert isinstance(
                    feature, int
                ), f"{(feature_name, feature)} is not an int"


def update_networkx_feature(graph_fn, idx, feature_name, feature):
    graph_fn[idx][feature_name] = feature

class ToDGLGraph(object):
    def __init__(self, vocab):
        self.vocab = vocab

    def __call__(self, graph):
        return process_networkx_graph(graph, self.vocab)