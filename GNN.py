# Copyright (c) Facebook, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.
import dgl
import torch
import torch.nn as nn
from loss import AUCPRHingeLoss
import math
import copy
import numpy as np

device = 'cuda' if torch.cuda.is_available() else 'cpu'
class GNNEncoder(nn.Module):
    def __init__(
            self,
            node_vocab_size,
            node_hidden_size,
            heterograph=False,
            use_node_embedding=True,
            num_node_type=4,
            n_steps=1,
            n_etypes=4,
            etypes=[('0', '0', '0'), ('0', '1', '1'), ('0', '2', '0'), ('1', '1', '0'), ('2', '1', '0'), ('3', '3', '1'), ('3', '3', '2'), ('3', '3', '3')],
            n_message_passes=2,
            reward_dim=1,
            gnn_type="Combination",
            predictor="MLP",
            feat_drop=0.0,
            num_heads=8,
            concat_intermediate=False
    ):
        super(GNNEncoder, self).__init__()

        self.use_node_embedding = use_node_embedding
        self.node_hidden_size = node_hidden_size
        self.n_steps = n_steps
        self.n_etypes = 1 if heterograph else n_etypes
        self.n_message_passes = n_message_passes
        self.reward_dim = reward_dim
        self.gnn_type = gnn_type
        self.num_heads = num_heads
        self.feat_drop = feat_drop
        self.concat_intermediate = concat_intermediate
        self.heterograph = heterograph
        self.predictor = predictor
        self.etypes = etypes
        self.epsilon = 1e-07
        self.inference = "graph"

        if self.use_node_embedding:
            if self.heterograph:
                num_embeddings = {}
                for i in range(num_node_type):
                    num_embeddings[i] = node_vocab_size
                self.node_embedding = dgl.nn.pytorch.HeteroEmbedding(num_embeddings, node_hidden_size)
            else:
                self.node_embedding = nn.Embedding(node_vocab_size, node_hidden_size)

        self.embed_dim = self.node_hidden_size
        if self.gnn_type == "GatedGraphConv":
            conv_layer = dgl.nn.pytorch.conv.GatedGraphConv(
                  in_feats=self.node_hidden_size,
                  out_feats=self.node_hidden_size,
                  n_steps=self.n_steps,
                  n_etypes=self.n_etypes,
              )
            self.ggcnn = nn.ModuleList([
                conv_layer
            ])
        elif self.gnn_type == "GraphConv":
            conv_layer = dgl.nn.pytorch.conv.GraphConv(
                in_feats=self.node_hidden_size,
                out_feats=self.node_hidden_size,
                norm='both', 
                weight=True, 
                bias=True,
                allow_zero_in_degree=True
            )
            if self.heterograph:
                mods_dict_conv = {}
                for i in range(num_node_type):
                    mods_dict_conv[str(i)] = conv_layer
                conv_layer =  dgl.nn.HeteroGraphConv(mods_dict_conv, aggregate='sum')

            self.ggcnn = nn.ModuleList([
                conv_layer
                for _ in range(self.n_message_passes)
            ])

        elif self.gnn_type=="GraphAttention":
            self.ggcnn = nn.ModuleList([])
            for i in range(self.n_message_passes):
                conv_layer = dgl.nn.pytorch.conv.GATv2Conv(
                        in_feats=self.node_hidden_size,
                        out_feats=self.node_hidden_size,
                        num_heads=self.num_heads,
                        feat_drop=0.2,
                        # attn_drop=0.4,
                        residual=True,
                        activation=nn.ReLU(),
                        allow_zero_in_degree=True,
                    )
                if self.heterograph:
                    mods_dict_conv = {}
                    for i in range(num_node_type):
                        mods_dict_conv[str(i)] = conv_layer
                    conv_layer =  dgl.nn.HeteroGraphConv(mods_dict_conv, aggregate='sum')
                self.ggcnn.append(conv_layer)

        elif self.gnn_type=="GraphSAGE":
            self.ggcnn = nn.ModuleList([])
            for i in range(self.n_message_passes):
                conv_layer = dgl.nn.pytorch.conv.SAGEConv(
                        in_feats=self.node_hidden_size,
                        out_feats=self.node_hidden_size,
                        aggregator_type="lstm",
                        activation=nn.ReLU()
                    )
                if self.heterograph:
                    mods_dict_conv = {}
                    for i in range(num_node_type):
                        mods_dict_conv[str(i)] = conv_layer
                    conv_layer =  dgl.nn.HeteroGraphConv(mods_dict_conv, aggregate='sum')
                self.ggcnn.append(conv_layer)

        elif self.gnn_type=="RelGraphConv":
            self.ggcnn = nn.ModuleList([])
            for i in range(self.n_message_passes):
                conv_layer = dgl.nn.pytorch.conv.RelGraphConv(
                    in_feat=self.node_hidden_size,
                    out_feat=self.node_hidden_size,
                    num_rels=self.n_etypes,
                    regularizer="bdd",
                    num_bases=self.n_etypes,
                    activation=nn.ReLU(),
                    dropout=0.2
                )
                if self.heterograph:
                    mods_dict_conv = {}
                    for i in range(num_node_type):
                        mods_dict_conv[str(i)] = conv_layer
                    conv_layer =  dgl.nn.HeteroGraphConv(mods_dict_conv, aggregate='sum')
                self.ggcnn.append(conv_layer)

        elif self.gnn_type=="Combination":            
            self.ggcnn = nn.ModuleList([])
            gat = dgl.nn.pytorch.conv.GATv2Conv(
                        in_feats=self.node_hidden_size,
                        out_feats=self.node_hidden_size,
                        num_heads=self.num_heads,
                        feat_drop=0.3,
                        attn_drop=0.3,
                        residual=True,
                        activation=nn.ReLU(),
                        allow_zero_in_degree=True,
                    )
            if self.heterograph:
                mods_dict_conv = {}
                for i in range(num_node_type):
                    mods_dict_conv[str(i)] = gat
                gat =  dgl.nn.HeteroGraphConv(mods_dict_conv, aggregate='sum')
            # self.ggcnn.append(gat)
            self.ggcnn.append(gat)
            for i in range(self.n_message_passes-1):
                # conv_layer = dgl.nn.pytorch.conv.SAGEConv(
                #         in_feats=self.node_hidden_size,
                #         out_feats=self.node_hidden_size,
                #         aggregator_type="lstm",
                #         activation=nn.ReLU()
                #     )
                # conv_layer = dgl.nn.pytorch.conv.GatedGraphConv(
                #   in_feats=self.node_hidden_size,
                #   out_feats=self.node_hidden_size,
                #   n_steps=self.n_steps,
                #   n_etypes=self.n_etypes,
                # )
                # conv_layer = dgl.nn.pytorch.conv.RelGraphConv(
                #     in_feat=self.node_hidden_size,
                #     out_feat=self.node_hidden_size,
                #     num_rels=self.n_etypes,
                #     regularizer="basis",
                #     num_bases=self.n_etypes,
                #     activation=nn.ReLU(),
                #     dropout=0.2
                # )
                conv_layer = dgl.nn.pytorch.conv.GraphConv(
                    in_feats=self.node_hidden_size,
                    out_feats=self.node_hidden_size,
                    norm='both', 
                    weight=True, 
                    bias=True,
                    # activation=nn.LeakyReLU(),
                    activation=nn.ReLU(),
                    allow_zero_in_degree=True
                )
                self.ggcnn.append(conv_layer)
                
        else:
          raise NotImplementedError("")

        # if self.concat_intermediate:
        #     self.embed_dim = (self.n_message_passes+1) * self.embed_dim 
        #     if self.heterograph:
        #         self.embed_dim *= num_node_type

        # self.dim_reduce_layer = nn.Sequential(
        #         nn.Conv1d(in_channels=num_edge_type, out_channels=1, kernel_size=1),
        #         nn.ReLU(),
        #         nn.MaxPool1d(3, stride=2))
        # conv_reduce_dim = embed_dim/num_edge_type + 1
        # self.reduce_dim = int((conv_reduce_dim + 2*(-1)*(3-1)-1)/2) + 1
        # if self.attention:
        #     self.attention_layer = nn.MultiheadAttention(
        #             embed_dim=embed_dim,
        #             num_heads=self.num_heads,
        #             dropout=0.3
        #         )
        #     self.attention_activation = nn.LeakyReLU()

        self.output_norm = nn.Sigmoid()
        if self.predictor == "MLP":
            self.reward_predictor_block_one = nn.Sequential(
                nn.LayerNorm(self.embed_dim),
                nn.Dropout(p=0.3),
                nn.Linear(self.embed_dim, 32),
                nn.ReLU())

            self.reward_predictor_block_two = nn.Sequential(
                # nn.BatchNorm1d(self.node_hidden_size),
                nn.LayerNorm(self.embed_dim),
                # nn.Softmax(dim=1),
                # nn.ReLU(),
                nn.Dropout(p=0.3),
                nn.Linear(self.embed_dim, self.reward_dim))
            # self.reward_predictor_block_one = nn.Sequential(
            #     nn.LayerNorm(self.embed_dim*2),
            #     nn.Dropout(p=0.3),
            #     nn.Linear(self.embed_dim*2, 1))
        elif self.predictor == "Conv":
            self.reward_predictor_conv = nn.Sequential(
                nn.Conv1d(in_channels=embed_dim, out_channels=32, kernel_size=3),
                nn.ReLU(),
                nn.MaxPool1d(3, stride=2),
                nn.Conv1d(32, 16, 1),
                nn.ReLU(),
                nn.MaxPool1d(2, stride=2))

            self.fc_1 = nn.Linear(16,1)
            self.fc_2 = nn.Linear(16,1)
            self.drop = nn.Dropout(p=0.2)
        else:
            raise NotImplementedError("")
        # pos_weight = nn.Parameter(torch.tensor(1.5), requires_grad=True).to(device=device)

        self.loss_fn = nn.BCEWithLogitsLoss()
        #self.loss_fn = AUCPRHingeLoss()
        # self.loss_fn = self.f1_beta

    def forward(self, g, node_idx=None):
        pass

    def get_loss(self, g, labels, debug=False):
        """
        Loss function, scales the reward to the same loss function from
        R2D2 (https://openreview.net/pdf?id=r1lyTjAqYX). It also allows
        us to see the difference between the unscaled reward and its
        associated prediction
        """
        preds, _ = self.forward(g)
        preds = preds.squeeze(1)
        labels = labels.to(dtype=torch.float)
        if debug:
            print(preds.shape)
            print(labels.shape)
        return self.loss_fn(labels, preds)

    def combine_loss(self, graph_pred, graph_label, block_preds, block_labels, cluster_loss=0):
        graph_pred = torch.squeeze(graph_pred, dim=1)
        block_preds = torch.squeeze(block_preds, dim=1)
        return 0.7 * self.loss_fn(block_preds, block_labels) + 0.3 * self.loss_fn(graph_pred, graph_label) + 0.1 * cluster_loss

    def featurize_nodes(self, g):
        # This is very CompilerGym specific, can be rewritten for other tasks
        if self.heterograph:
            if self.use_node_embedding:
                g.ndata["feat"] = self.node_embedding(g.ndata["text_idx"])

        else:
            features = []
            if self.use_node_embedding:
                features =self.node_embedding(g.ndata["text_idx"])
            g.ndata["feat"] = features

    def get_edge_embedding(self, g):
        # TODO: this should can be for positional embeddings
        pass

    def myExpLoss (self, logits, labels):
        return  (( -( labels * logits ) ).exp()).mean()()

    def f1_beta(self, logits, labels):
        y_pred = self.output_norm(logits)
        TP = (y_pred * labels).sum()
        FP = ((1 - y_pred) * labels).sum()
        FN = (y_pred * (1 - labels)).sum()
        fbeta = (1 + self.epsilon**2) * TP / ((1 + self.epsilon**2) * TP + (self.epsilon**2) * FN + FP + self.epsilon)
        fbeta = fbeta.clamp(min=self.epsilon, max=1 - self.epsilon)
        return 1 - fbeta.mean()

    def encoding(self, g):
        self.featurize_nodes(g)
        res = g.ndata["feat"]
        if self.concat_intermediate:
            if self.heterograph:
                intermediate = {}
                for node_type in g.ndata["feat"].keys():
                    intermediate[node_type] = [dgl.max_nodes(g, "feat", ntype=node_type)]
            else:
                intermediate = res

        for i, layer in enumerate(self.ggcnn):
            if self.concat_intermediate:
                if self.heterograph:
                    intermediate = {}
                    for node_type in g.ndata["feat"].keys():
                        intermediate[node_type] = [dgl.max_nodes(g, "feat", ntype=node_type)]
                else:
                    intermediate = res
            if self.gnn_type=="GatedGraphConv" or self.gnn_type=="RelGraphConv":
                if self.heterograph:
                    for node_type in g.ndata["feat"].keys():
                        res = layer(g, res)
                else:
                    res = layer(g, res, g.edata["flow"])
            elif self.gnn_type=="Combination":
                #This is for the GAT layer
                if i == 0:
                    res = layer(g, res)
                    if self.heterograph:
                        for ntype in res:
                            res[ntype] = torch.mean(res[ntype],dim=1)
                    else:
                        res = torch.mean(res, dim=1)
                else:
                    # res = layer(g, res, g.edata["flow"])
                    res = layer(g, res)
            else:
                res = layer(g, res)
                if self.gnn_type=="GraphAttention":
                    if self.heterograph:
                        for ntype in res:
                            res[ntype] = torch.mean(res[ntype],dim=1)
                    else:
                        res = torch.mean(res, dim=1)
        return res
