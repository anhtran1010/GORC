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
from GNN import GNNEncoder
from race_transformer import Transformer
import sys
from tokenizers import Tokenizer
from tokenizers.models import BPE
from tokenizers.trainers import BpeTrainer
from tokenizers.pre_tokenizers import Whitespace
import os 
import torch.nn.functional as F

device = 'cuda' if torch.cuda.is_available() else 'cpu'

class CombinedEncoder(GNNEncoder):
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
            concat_intermediate=True,
            attention=False
    ):
        super(CombinedEncoder, self).__init__(
            node_vocab_size, 
            node_hidden_size, 
            heterograph, 
            use_node_embedding, 
            num_node_type, 
            n_steps, 
            n_etypes, 
            etypes, 
            n_message_passes, 
            reward_dim, 
            gnn_type,
            predictor, 
            feat_drop, 
            num_heads, 
            concat_intermediate)

        self.tokenizer = Tokenizer.from_file("drb_tokenizer.json")
        self.tokenizer.enable_truncation(max_length=4096)
        self.llm = Transformer(embed_dim=64, src_vocab_size=self.tokenizer.get_vocab_size(), target_vocab_size=self.tokenizer.get_vocab_size(), seq_length=4096, num_layers=2)
        if self.concat_intermediate:
            combined_dim = self.embed_dim + 64
        else:
            combined_dim = self.embed_dim*2
        self.graph_predictor = nn.Sequential(
                nn.LeakyReLU(),
                nn.Dropout(p=0.3),
                nn.Linear(combined_dim, self.reward_dim))

        self.llm_trans = nn.Sequential(
                nn.LayerNorm(512),
                nn.Dropout(p=0.3),
                nn.Linear(512, 64))
        
        self.llm_predictor = nn.Sequential(
                nn.Dropout(p=0.3),
                nn.Linear(512, self.reward_dim))
        
    def forward(self, g, node_idx, prompts, targets=None):
        with g.local_scope():
            res = self.encoding(g)
            # adj = g.adj().to_dense()
            # _, res, adj, sp, o, c = self.pooling(res, adj)
            # res = res.squeeze(0)
            if self.concat_intermediate:
                aggregation = torch.cat(res, axis=1)
            else:
                g.ndata["feat"] = res
            llm_inputs = self.tokenizer.encode(prompts["prompt"]).ids
            llm_inputs = torch.tensor(llm_inputs, device=device, dtype=int)
            llm_encode = self.llm.encode(llm_inputs)
            total_loss = 0
            if targets:
                block_aggregation = torch.zeros(len(node_idx), res.shape[-1]*2, device=device)
                llm_aggregation = torch.zeros(len(node_idx), 512, device=device)
                for i, line in enumerate(zip(node_idx, targets)):
                    idx, trg = line[0], line[1]
                    sg = g.subgraph(idx)
                    # feat = sg.ndata["feat"]
                    # mask = torch.zeros(g.num_nodes(), device=device).scatter_(0, idx, 1)
                    # _, block, new_adj, sp, o, c = self.pooling(res, adj, mask)
                    block = dgl.max_nodes(sg, "feat")
                    trg_input = self.tokenizer.encode(trg).ids
                    trg_input = torch.tensor(trg_input, device=device)
                    llm_pred = self.llm(llm_encode, trg_input).mean(dim=0)
                    llm_aggregation[i] = self.llm.decode_out(llm_encode, trg_input).mean(dim=0)
                    block = torch.flatten(block)
                    block_aggregation[i] = torch.cat([block,llm_pred], dim=0)
                # total_loss += sp + o + c
            # _, aggregation, graph_adj, spg, og, cg = self.pooling(res, adj)
            # aggregation = aggregation.squeeze(0)
            if not self.concat_intermediate:
                aggregation = dgl.max_nodes(g, "feat")
        # if self.attention:
        #     res, atten_weight = self.attention_layer(query=aggregation, key=aggregation, value=aggregation)
        #     res = self.attention_activation(res)
            
        if self.predictor == "MLP":
            if self.heterograph and self.concat_intermediate==False:
                res, _ = torch.max(res, dim=1)
            if targets:
                res_blocks = self.reward_predictor_block_one(block_aggregation)
                res_blocks = nn.functional.sigmoid(self.reward_predictor_block_two(res_blocks))
                res_graph = nn.functional.sigmoid(self.graph_predictor(aggregation))
                res_llm = nn.functional.sigmoid(self.llm_predictor(llm_aggregation))
                graph_mask = self.min_compare(res_blocks)
                llm_mask = self.min_compare(res_llm)
                res_out = torch.where(llm_mask<graph_mask, res_llm, res_graph)
            else:
                # llm_encode, _ = torch.max(llm_encode, dim=0)
                # llm_encode = torch.mean(llm_encode, dim=0)
                llm_encoding = self.llm_trans(llm_encode).mean(dim=0)
                # llm_encoding, _ = llm_encoding.max(dim=0)
                if llm_encoding.shape[0] == 0:
                    print(llm_encoding)
                    print(prompts)
                # res_llm = nn.functional.sigmoid(self.llm_predictor(llm_encode).sum(dim=0))
                # if torch.isnan(res_llm):
                #     print(res_llm)

                graph_aggregation = torch.cat([aggregation, llm_encoding.unsqueeze(0)], dim=1)
                
                # graph_aggregation = F.leaky_relu(aggregation * llm_encoding)
                if not torch.isfinite(graph_aggregation).any():
                    print(graph_aggregation)
                res_out = self.graph_predictor(graph_aggregation).squeeze(0)
                res_graph = nn.functional.sigmoid(self.reward_predictor_block_two(aggregation)).squeeze(0)
                res_llm = self.llm_predictor(llm_encode)
                # graph_mask = self.min_compare(res_graph)
                # llm_mask = self.min_compare(res_llm)
                # res_out = torch.where(llm_mask<graph_mask, res_llm, res_graph)
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

        if not self.training:
            res_out = self.output_norm(res_out)
        return res_llm, res_out, res_graph

    def min_compare(self, output):
        one_distance = 1 - output
        zero_distance = output - 0
        mask = torch.where(one_distance<zero_distance, one_distance, zero_distance)
        return mask

def nodes_with_feature_one(nodes):
# Whether a node has feature 1
    return (nodes.data['type'] == 1)


