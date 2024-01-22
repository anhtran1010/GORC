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
            num_heads=4,
            concat_intermediate=True,
            graph_inference=True,
            attention=False
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
        self.graph_inference = graph_inference
        self.heterograph = heterograph
        self.predictor = predictor
        self.attention = attention
        self.etypes = etypes
        if self.use_node_embedding:
            if self.heterograph:
                num_embeddings = {}
                for i in range(num_node_type):
                    num_embeddings[i] = node_vocab_size
                self.node_embedding = dgl.nn.pytorch.HeteroEmbedding(num_embeddings, node_hidden_size)
            else:
                self.node_embedding = nn.Embedding(node_vocab_size, node_hidden_size)

        embed_dim = self.node_hidden_size
        if self.gnn_type == "GatedGraphConv":
            conv_layer = dgl.nn.pytorch.conv.GatedGraphConv(
                  in_feats=self.node_hidden_size,
                  out_feats=self.node_hidden_size,
                  n_steps=self.n_steps,
                  n_etypes=self.n_etypes,
              )
            self.ggcnn = nn.ModuleList([
                conv_layer
                for _ in range(self.n_message_passes)
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
                for i in self.etypes:
                    mods_dict_conv[i] = conv_layer
                conv_layer =  dgl.nn.HeteroGraphConv(mods_dict_conv, aggregate='sum')

            self.ggcnn = nn.ModuleList([
                conv_layer
                for _ in range(self.n_message_passes)
            ])

        elif self.gnn_type=="GraphAttention":
            self.ggcnn = nn.ModuleList([])
            in_feats = self.node_hidden_size
            for i in range(self.n_message_passes):
                conv_layer = dgl.nn.pytorch.conv.GATv2Conv(
                        in_feats=in_feats,
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
                    for i in self.etypes:
                        mods_dict_conv[i] = conv_layer
                    conv_layer =  dgl.nn.HeteroGraphConv(mods_dict_conv, aggregate='sum')
                self.ggcnn.append(conv_layer)
                in_feats = self.node_hidden_size * self.num_heads

        elif self.gnn_type=="Combination":
            out = int(self.node_hidden_size/self.num_heads)
            
            gat = dgl.nn.pytorch.conv.GATv2Conv(
                        in_feats=self.node_hidden_size,
                        out_feats=self.node_hidden_size,
                        num_heads=self.num_heads,
                        feat_drop=0.2,
                        attn_drop=0.2,
                        residual=True,
                        activation=nn.LeakyReLU(),
                        allow_zero_in_degree=True,
                    )
            if self.heterograph:
                mods_dict_conv = {}
                for i in self.etypes:
                    mods_dict_conv[i] = gat
                gat =  dgl.nn.HeteroGraphConv(mods_dict_conv, aggregate='sum')

            self.ggcnn = nn.ModuleList([gat])
            conv_layer = dgl.nn.pytorch.conv.GatedGraphConv(
                  in_feats=self.node_hidden_size,
                  out_feats=self.node_hidden_size,
                  n_steps=self.n_steps-1,
                  n_etypes=self.n_etypes,
              )
            conv_layer = dgl.nn.pytorch.conv.GraphConv(
                in_feats=self.node_hidden_size,
                out_feats=self.node_hidden_size,
                norm='both', 
                weight=True, 
                bias=True,
                activation=nn.LeakyReLU(),
                allow_zero_in_degree=True
            )
            if self.heterograph:
                mods_dict_conv = {}
                for i in self.etypes:
                    mods_dict_conv[i] = conv_layer
                conv_layer =  dgl.nn.HeteroGraphConv(mods_dict_conv, aggregate='sum')

            for i in range(self.n_message_passes-1):
                self.ggcnn.append(conv_layer)
            # self.ggcnn.append(conv_layer)
            
        else:
          raise NotImplementedError("")

        if self.concat_intermediate:
            embed_dim = (self.n_message_passes+1) * embed_dim 
            if self.heterograph:
                embed_dim *= num_node_type
            if self.gnn_type == "GraphAttention":
                embed_dim = 2048

        # self.dim_reduce_layer = nn.Sequential(
        #         nn.Conv1d(in_channels=num_edge_type, out_channels=1, kernel_size=1),
        #         nn.ReLU(),
        #         nn.MaxPool1d(3, stride=2))
        # conv_reduce_dim = embed_dim/num_edge_type + 1
        # self.reduce_dim = int((conv_reduce_dim + 2*(-1)*(3-1)-1)/2) + 1
        if self.attention:
            self.attention_layer = nn.MultiheadAttention(
                    embed_dim=embed_dim,
                    num_heads=self.num_heads,
                    dropout=0.3
                )
            self.attention_activation = nn.LeakyReLU()

        self.output_norm = nn.Sigmoid()
        if self.predictor == "MLP":
            self.reward_predictor_block_one = nn.Sequential(
                # nn.LayerNorm(embed_dim),
                nn.Dropout(p=0.2),
                nn.Linear(embed_dim, 64),
                nn.ReLU())

            self.reward_predictor_block_two = nn.Sequential(
                # nn.BatchNorm1d(self.node_hidden_size),
                # nn.LayerNorm(64),
                # nn.Softmax(dim=1),
                nn.ReLU(),
                nn.Dropout(p=0.2),
                nn.Linear(embed_dim, self.reward_dim))
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

            for i, layer in enumerate(self.ggcnn):
                if self.gnn_type=="GatedGraphConv":
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
                        for ntype in res:
                            if i == self.n_message_passes-1:
                                res[ntype] = torch.mean(res[ntype],dim=1)
                            res[ntype] = torch.flatten(res[ntype],start_dim=1)
                if self.concat_intermediate:
                    g.ndata["feat"] = res
                    if self.heterograph:
                        for key in intermediate.keys():
                            intermediate[key].append(dgl.max_nodes(g, "feat", ntype=key))
                    else:
                        intermediate.append(dgl.max_nodes(g, "feat"))
            if self.graph_inference:
                if self.concat_intermediate:
                    if self.heterograph:
                        features = []
                        for value in intermediate.values():
                            value_cat = torch.cat(value, axis=1)
                            features.append(value_cat)
                        # aggregation = torch.cat(features, axis=1)
                        
                        # if self.predictor == "MLP":
                        #     aggregation = torch.cat(features, axis=1)
                        # elif self.predictor == "Conv":
                        #     aggregation = torch.stack(features).transpose(0,1)
                        if self.predictor == "MLP":
                            # aggregation = torch.stack(features).transpose(0,1)
                            # aggregation = self.dim_reduce_layer(aggregation)
                            # aggregation = torch.flatten(aggregation, 1)
                            aggregation = torch.cat(features, axis=1)
                        elif self.predictor == "Conv":
                            aggregation = torch.stack(features).transpose(0,1)
                    else:
                        aggregation = torch.cat(intermediate, axis=1)
                else:
                    if self.heterograph:
                        if self.predictor == "MLP":
                            g.ndata["feat"] = res
                            aggregation=[]
                            for key, value in g.ndata["feat"].items():
                                node_aggregation = dgl.sum_nodes(g,"feat", ntype=key)
                                aggregation.append(node_aggregation)
                            aggregation = torch.stack(aggregation).transpose(0,1)
                        else:
                            g.ndata["old_feat"] = g.ndata["feat"]
                            batch_original = []
                            batch = []
                            g.ndata["feat"] = res
                            for graph in dgl.unbatch(g):
                                nodes_data = []
                                nodes_data_original = []
                                for ntype in graph.ndata["feat"]:
                                    nodes_data_original.append(graph.ndata["feat"][ntype])
                                    concat = torch.cat([graph.ndata["feat"][ntype], graph.ndata["old_feat"][ntype]], dim=0)
                                    nodes_data.append(concat)
                                nodes_data = torch.cat(nodes_data, dim=0).transpose(0, 1)
                                nodes_data_original = torch.cat(nodes_data_original, dim=0).transpose(0, 1)
                                batch.append(nodes_data)
                                batch_original.append(nodes_data_original)
                        # print(aggregation.flatten(start_dim=1).shape)
                    else:
                        g.ndata["feat"] = res
                        aggregation = dgl.max_nodes(g, "feat")
            else:
                adj_mat = g.adj_external().to(dtype=torch.double, device=device)
                res_sparse = res.to_sparse().requires_grad_()
                aggregation = torch.sparse.mm(adj_mat, res_sparse).to_dense()

        if self.attention:
            res, atten_weight = self.attention_layer(query=aggregation, key=aggregation, value=aggregation)
            res = self.attention_activation(res)
            
        if self.predictor == "MLP":
            res = aggregation
            if self.heterograph and self.concat_intermediate==False:
                res, _ = torch.max(res, dim=1)
            # res = self.reward_predictor_block_one(res)
            res = self.reward_predictor_block_two(res)
        else:
            output = []
            for concat_data, encoded_data in zip(batch, batch_original):
                concat = self.reward_predictor_conv(concat_data).sum(dim=1)
                encode = self.reward_predictor_conv(encoded_data).sum(dim=1)
                res = self.fc_1(concat) * self.fc_2(encode)
                res = self.drop(res)
                output.append(res)
            res = torch.stack(output)
            aggregation = 0
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
                features =self.node_embedding(g.ndata["text_idx"])
            g.ndata["feat"] = features

    def get_edge_embedding(self, g):
        # TODO: this should can be for positional embeddings
        pass
