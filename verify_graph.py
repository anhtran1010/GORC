import dgl
from dgl.data.utils import load_graphs
from collections.abc import Mapping

from dgl import backend as F, convert, utils
from dgl.base import ALL, DGLError, EID, is_all, NID
from dgl.heterograph import DGLGraph
from dgl.heterograph_index import disjoint_union, slice_gidx
from dgl.batch import _batch_feat_dicts

import numpy as np
import pickle

def batch(graphs, ndata=ALL, edata=ALL):
    relations = list(graphs[0].canonical_etypes)
    relation_ids = [graphs[0].get_etype_id(r) for r in relations]
    ntypes = list(graphs[0].ntypes)
    ntype_ids = [graphs[0].get_ntype_id(n) for n in ntypes]
    etypes = [etype for _, etype, _ in relations]

    gidx = disjoint_union(
        graphs[0]._graph.metagraph, [g._graph for g in graphs]
    )
    retg = DGLGraph(gidx, ntypes, etypes)

    # Compute batch num nodes
    bnn = {}
    for ntype in ntypes:
        num_nodes = 0
        for g in graphs:
            num_nodes += g.batch_num_nodes(ntype).data
        bnn[ntype] = num_nodes
    retg.set_batch_num_nodes(bnn)

    # Compute batch num edges
    bne = {}
    for etype in relations:
        num_edges = 0
        for g in graphs:
            num_edges += g.batch_num_edges(etype).data
        bne[etype] = num_edges
    retg.set_batch_num_edges(bne)

    # Batch node feature
    for ntype_id, ntype in zip(ntype_ids, ntypes):
        all_empty = all(g._graph.num_nodes(ntype_id) == 0 for g in graphs)
        frames = [
            g._node_frames[ntype_id]
            for g in graphs
            if g._graph.num_nodes(ntype_id) > 0 or all_empty
        ]
        # TODO: do we require graphs with no nodes/edges to have the same schema?  Currently
        # we allow empty graphs to have no features during batching.
        ret_feat = _batch_feat_dicts(
            frames, ndata, 'nodes["{}"].data'.format(ntype)
        )
        retg.nodes[ntype].data.update(ret_feat)

    # Batch edge feature
    for etype_id, etype in zip(relation_ids, relations):
        all_empty = all(g._graph.num_edges(etype_id) == 0 for g in graphs)
        frames = [
            g._edge_frames[etype_id]
            for g in graphs
            if g._graph.num_edges(etype_id) > 0 or all_empty
        ]
        # TODO: do we require graphs with no nodes/edges to have the same schema?  Currently
        # we allow empty graphs to have no features during batching.
        ret_feat = _batch_feat_dicts(
            frames, edata, "edges[{}].data".format(etype)
        )
        retg.edges[etype].data.update(ret_feat)

    return retg

graphs = load_graphs("dataracebench_noarithmatic_nofastmath_graphs.bin")
graphs = graphs[0]

with open("dataracebench_noarithmatic_nofastmath_labels", 'rb') as labels_file:
    labels = pickle.load(labels_file)

pos_instances = [graphs[i] for i in range(len(labels)) if labels[i]==1]
neg_instances = [graphs[i] for i in range(len(labels)) if labels[i]==0]

combined_graphs = []
combined_labels = []

for pos_graph in pos_instances:
    choices = np.random.choice(len(neg_instances), 2, replace=False)
    for index in choices:
        combined_graphs.append(batch([pos_graph, neg_instances[index]]))
        combined_labels.append(1)

for neg_graph in neg_instances:
    choices = np.random.choice(len(neg_instances), 2, replace=False)
    for index in choices:
        combined_graphs.append(batch([neg_graph, neg_instances[index]]))
        combined_labels.append(0)

combined_graphs = graphs + combined_graphs
combined_labels = labels + combined_labels

print(len(combined_graphs))
print(len(combined_labels))
with open("dataracebench_combined_labels", "wb") as combined_labels_file:
    pickle.dump(combined_labels, combined_labels_file)

dgl.save_graphs("dataracebench_combined_graphs.bin", combined_graphs)






