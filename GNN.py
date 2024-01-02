# Copyright (c) Facebook, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.
import dgl
import torch
import torch.nn as nn
from loss import AUCPRHingeLoss
import math

device = 'cuda' if torch.cuda.is_available() else 'cpu'
class GNNEncoder(nn.Module):
    def __init__(
            self,
            node_vocab_size,
            node_hidden_size,
            heterograph=True,
            use_node_embedding=True,
            num_node_type=4,
            num_edge_type=4,
            n_steps=1,
            n_etypes=4,
            n_message_passes=0,
            reward_dim=1,
            gnn_type="GATv2Conv",
            predictor="Conv",
            feat_drop=0.0,
            num_heads=5,
            concat_intermediate=True,
            graph_inference=True
    ):
        super(GNNEncoder, self).__init__()

        self.use_node_embedding = use_node_embedding
        self.node_hidden_size = node_hidden_size
        self.n_steps = n_steps
        self.n_etypes = n_etypes
        self.n_message_passes = n_message_passes
        self.reward_dim = reward_dim
        self.gnn_type = gnn_type
        self.num_heads = num_heads
        self.feat_drop = feat_drop
        self.concat_intermediate = concat_intermediate
        self.graph_inference = graph_inference
        self.heterograph = heterograph
        self.predictor = predictor
        if self.use_node_embedding:
            if self.heterograph:
                num_embeddings = {}
                for i in range(num_node_type):
                    num_embeddings[i] = node_vocab_size
                self.node_embedding = dgl.nn.pytorch.HeteroEmbedding(num_embeddings, node_hidden_size)
            else:
                self.node_embedding = nn.Embedding(node_vocab_size, node_hidden_size)

        embed_dim = self.node_hidden_size
        # if self.gnn_type == "GatedGraphConv":
        #     self.ggcnn = nn.ModuleList(
        #         [
        #             dgl.nn.pytorch.conv.GatedGraphConv(
        #                 in_feats=self.node_hidden_size,
        #                 out_feats=self.node_hidden_size,
        #                 n_steps=self.n_steps,
        #                 n_etypes=self.n_etypes,
        #             )
        #             for _ in range(self.n_message_passes)
        #         ]
        #     )

        # elif self.gnn_type == "GATv2Conv":
        #     self.ggcnn = nn.ModuleList(
        #         [
        #             dgl.nn.pytorch.conv.GATv2Conv(
        #                 in_feats=self.node_hidden_size,
        #                 out_feats=self.node_hidden_size,
        #                 num_heads=self.num_heads,
        #                 feat_drop=0.3,
        #                 attn_drop=0.3,
        #                 residual=True,
        #                 activation=nn.ReLU(),
        #                 allow_zero_in_degree=True,
        #             )
        #             for _ in range(self.n_message_passes)
        #         ]
        #     )
        # else:
        #     raise NotImplementedError("")
        if self.num_heads != 0:
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
                mods_dict = {}
                for i in range(num_edge_type):
                    mods_dict[str(i)] = gat 
                self.gat = dgl.nn.HeteroGraphConv(mods_dict, aggregate='sum')
            else:
                self.gat = gat
        conv_layer = dgl.nn.pytorch.conv.GatedGraphConv(
                in_feats=self.node_hidden_size,
                out_feats=self.node_hidden_size,
                n_steps=self.n_steps,
                n_etypes=self.n_etypes,
            )

        if self.heterograph:
            conv_layer = dgl.nn.pytorch.conv.GraphConv(
                in_feats=self.node_hidden_size,
                out_feats=self.node_hidden_size,
                 norm='both', 
                 weight=True, 
                 bias=True
            )
            mods_dict_conv = {}
            for i in range(num_edge_type):
                mods_dict_conv[str(i)] = conv_layer
            conv_layer =  dgl.nn.HeteroGraphConv(mods_dict_conv, aggregate='sum')

        self.ggcnn = nn.ModuleList([
            conv_layer
            for _ in range(self.n_message_passes-1)
        ])

        if self.concat_intermediate:
            if self.num_heads == 0:
                embed_dim = self.n_message_passes * embed_dim * num_edge_type
            else:
                embed_dim = (self.n_message_passes + 1) * embed_dim * num_edge_type

        # self.multihead_attention_one = nn.MultiheadAttention(embed_dim, self.num_heads)
        # self.multihead_attention_two = nn.MultiheadAttention(self.node_hidden_size, self.num_heads)
        self.output_norm = nn.Sigmoid()
        if self.predictor == "MLP":
            self.reward_predictor_block_one = nn.Sequential(
                nn.LayerNorm(embed_dim),
                nn.Dropout(p=0.3),
                nn.Linear(embed_dim, 64),
                nn.ReLU())
            f_dim = 64
        elif self.predictor == "Conv":
            self.reward_predictor_block_one = nn.Sequential(
                nn.Conv1d(in_channels=num_edge_type, out_channels=3, kernel_size=3),
                nn.ReLU(),
                nn.MaxPool1d(3, stride=2),
                nn.Conv1d(3, 1, 1),
                nn.ReLU(),
                nn.MaxPool1d(2, stride=3))

            conv_one_out_dim = embed_dim/num_edge_type + 2*(-1)*(3-1)
            block_one_out_dim = int((conv_one_out_dim -1)/2) + 1
            conv_two_out_dim = block_one_out_dim
            f_dim = int((conv_two_out_dim -1)/3) +1
        
        self.reward_predictor_block_two = nn.Sequential(
            # nn.BatchNorm1d(self.node_hidden_size),
            nn.LayerNorm(f_dim),
            # nn.Softmax(dim=1),
            nn.Dropout(p=0.4),
            nn.Linear(f_dim, self.reward_dim)
        )

        self.loss_fn = nn.BCEWithLogitsLoss()
        #self.loss_fn = AUCPRHingeLoss()

    def forward(self, g):
        with g.local_scope():
            self.featurize_nodes(g)
            res = g.ndata["feat"]
            if self.concat_intermediate:
                if self.heterograph:
                    intermediate = {}
                    for node_type in g.ndata["feat"].keys():
                        intermediate[node_type] = [dgl.max_nodes(g, "feat", ntype=node_type)]
                else:
                    intermediate = [dgl.max_nodes(g, "feat")]
            # if self.gnn_type == "GatedGraphConv":
            #     for i, layer in enumerate(self.ggcnn):
            #         res = layer(g, res, g.edata["flow"])
            #         if self.concat_intermediate:
            #             g.ndata["feat"] = res
            #             intermediate.append(dgl.max_nodes(g, "feat"))

            # elif self.gnn_type == "GATv2Conv":
            #     for i, layer in enumerate(self.ggcnn):
            #         res = layer(g, res)
            #         res = torch.mean(res, dim=1)
            #         if self.concat_intermediate:
            #             g.ndata["feat"] = res
            #             intermediate.append(dgl.max_nodes(g, "feat"))
            if self.num_heads != 0:
                res = self.gat(g, res)
                for key in res.keys():
                    res[key] = torch.mean(res[key], dim=1)
                if self.concat_intermediate:
                    g.ndata["feat"] = res
                    if self.heterograph:
                        for key in intermediate.keys():
                            intermediate[key].append(dgl.max_nodes(g, "feat", ntype=key))
                    else:
                        intermediate.append(dgl.max_nodes(g, "feat"))
            for i, layer in enumerate(self.ggcnn):
                if self.heterograph:
                    res = layer(g, res)
                else:
                    res = layer(g, res, g.edata["flow"])
                if self.concat_intermediate:
                    g.ndata["feat"] = res
                    if self.heterograph:
                        for key in intermediate.keys():
                            intermediate[key].append(dgl.max_nodes(g, "feat", ntype=key))
                    else:
                        intermediate.append(dgl.max_nodes(g, "feat"))
            g.ndata["feat"] = res
            if self.graph_inference:
                if self.concat_intermediate:
                    if self.heterograph:
                        features = []
                        for value in intermediate.values():
                            value_cat = torch.cat(value, axis=1)
                            features.append(value_cat)
                        # 
                        if self.predictor == "MLP":
                            aggregation = torch.cat(features, axis=1)
                        elif self.predictor == "Conv":
                            aggregation = torch.stack(features).transpose(0,1)
                    else:
                        aggregation = torch.cat(intermediate, axis=1)
                else:
                    if self.heterograph:
                        aggregation = []
                        for key, value in g.ndata["feat"].items():
                            node_aggregation = dgl.max_nodes(g,"feat", ntype=key)
                            aggregation.append(node_aggregation)
                        aggregation = torch.cat(aggregation, axis=1)
                    else:
                        aggregation = dgl.max_nodes(g, "feat")
            else:
                adj_mat = g.adj_external().to(dtype=torch.double, device=device)
                res_sparse = res.to_sparse().requires_grad_()
                aggregation = torch.sparse.mm(adj_mat, res_sparse).to_dense()

        res = self.reward_predictor_block_one(aggregation)
        # res = self.reward_predictor_block_two(res)
        if self.predictor == "Conv":
            res = torch.flatten(res, 1)
        res = self.reward_predictor_block_two(res)
        # res = self.output_norm(res)

        if not self.train:
            res = self.output_norm(res)

        return res, aggregation

    def get_loss(self, g, labels, debug=False):
        """
        Loss function, scales the reward to the same loss function from
        R2D2 (https://openreview.net/pdf?id=r1lyTjAqYX). It also allows
        us to see the difference between the unscaled reward and its
        associated prediction
        """
        preds, _ = self.forward(g)
        preds = preds.squeeze(1)
        if debug:
            print(preds.shape)
            print(labels.shape)
        labels = labels.to(dtype=torch.float)
        return self.loss_fn(preds, labels)

    def featurize_nodes(self, g):
        # This is very CompilerGym specific, can be rewritten for other tasks
        if self.heterograph:
            if self.use_node_embedding:
                g.ndata["feat"] = self.node_embedding(g.ndata["text_idx"])

        else:
            features = []
            if self.use_node_embedding:
                features.append(self.node_embedding(g.ndata["text_idx"]))
            g.ndata["feat"] = features

    def get_edge_embedding(self, g):
        # TODO: this should can be for positional embeddings
        pass
