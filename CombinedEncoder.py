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
from GNN_block import GNNBlock
from torch_geometric.nn.dense import DMoNPooling
from transformers import AutoTokenizer, AutoModelForCausalLM, AutoConfig
from accelerate import load_checkpoint_and_dispatch
import sys
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
            gnn_type="GraphSAGE",
            predictor="MLP",
            feat_drop=0.0,
            num_heads=8,
            concat_intermediate=False,
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

        self.pooling = DMoNPooling([self.node_hidden_size, self.node_hidden_size], 1)
        self.tokenizer = AutoTokenizer.from_pretrained("meta-llama/Llama-2-7b-hf")
        config = AutoConfig.from_pretrained("meta-llama/Llama-2-7b-hf")
        self.llm = AutoModelForCausalLM.from_pretrained("meta-llama/Llama-2-7b-hf", torch_dtype=torch.bfloat16)
        print(sys.getsizeof(self.llm))
        self.last_hidden_state_size = self.llm.config.hidden_size
        self.llm_transformation = nn.Sequential(
            nn.Linear(self.last_hidden_state_size, 32),
            nn.ReLU()
        )
        self.graph_predictor = nn.Sequential(
                nn.LayerNorm(self.embed_dim),
                nn.Dropout(p=0.3),
                nn.Linear(self.embed_dim, self.reward_dim),
                nn.ReLU())

    def forward(self, g, node_idx, prompts):
        with g.local_scope():
            res = self.encoding(g)
            adj = g.adj().to_dense()
            # _, res, adj, sp, o, c = self.pooling(res, adj)
            # res = res.squeeze(0)
            g.ndata["feat"] = res
            block_aggregation = torch.zeros(len(node_idx), res.shape[-1], device=device)
            total_loss = 0
            for i, idx in enumerate(node_idx):
                # sg = g.subgraph(idx)
                # feat = sg.ndata["feat"]
                mask = torch.zeros(g.num_nodes(), device=device).scatter_(0, idx, 1)
                _, block, new_adj, sp, o, c = self.pooling(res, adj, mask)
                block_aggregation[i] = block.squeeze(0)
                total_loss += sp + o + c
            _, aggregation, graph_adj, spg, og, cg = self.pooling(res, adj)
            aggregation = aggregation.squeeze(0)
            llm_inputs = self.tokenizer(prompts["prompt"], return_tensors="pt")
            llm_encode = self.llm_transformation(self.llm.generate(llm_inputs.input_ids).last_hidden_state)
        # if self.attention:
        #     res, atten_weight = self.attention_layer(query=aggregation, key=aggregation, value=aggregation)
        #     res = self.attention_activation(res)
            
        if self.predictor == "MLP":
            if self.heterograph and self.concat_intermediate==False:
                res, _ = torch.max(res, dim=1)
            res_blocks = self.reward_predictor_block_one(block_aggregation)
            res_blocks = torch.cat([res_blocks, llm_encode], dim=1)
            res_blocks = self.reward_predictor_block_two(res_blocks)
            res_graph = self.graph_predictor(aggregation)
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

        return res_graph, res_blocks, total_loss

def nodes_with_feature_one(nodes):
# Whether a node has feature 1
    return (nodes.data['type'] == 1)
