import programl as pg
import os
import traceback
import pathlib
import re
from itertools import groupby, chain
import numpy as np
import pickle
import networkx as nx
from data_transform import ToDGLGraph
import dgl

# assign directory
c_directory = 'Indigo_nobug'
ir_directory = 'llvm_ir_indigo'
with open("trans_noarith_vocabs_O3", "rb") as f:
    current_vocab = pickle.load(f)

vocab = {"text": current_vocab}

def dataset_generator(file_name, full_path):
    source_file = full_path
    ir_file = os.path.join(ir_directory, file_name[:-2] + ".ll")
    if not os.path.isfile(ir_file):
        if "cpp" in file_name:
            os.system("/home/abtran/clang_13/bin/clang++ -I/home/abtran/clang_13/include/c++/v1 -S -emit-llvm {} -c -o {} -fopenmp=libiomp5".format(source_file, ir_file))
        else:
            os.system("/home/abtran/clang_13/bin/clang -S -emit-llvm {} -c -o {} -fopenmp=libiomp5"
                  .format(source_file, ir_file))
    with open(ir_file, 'r') as ir_f:
        ir = ir_f.read()
    # ir = ir.replace(bad_phrase, "")
    pMlIr = pg.from_llvm_ir(ir)
    IRnetx = pg.to_networkx(pMlIr)
    node_to_be_update = []
    for node in IRnetx.nodes.data('features'):
        if node[1]:
            full_text = node[1]['full_text'][0]
            if "kmpc" in full_text or "omp" in full_text:
                node_to_be_update.append(node[0])

    for bad_node in node_to_be_update:
        full_text = IRnetx.nodes[bad_node]['features']['full_text'][0]
        m = re.search(r'@(.*)', full_text)
        if m:
            new_feat = m.group(1)
            func_name = re.search(r'^(.*?)\(', new_feat)
            for adj in IRnetx.neighbors(bad_node):
                if "undefined function" in IRnetx.nodes[adj]['text']:
                    IRnetx.nodes[adj]['features']['full_text'] = [new_feat]
                    IRnetx.nodes[adj]['text'] = func_name.group(1)

    return IRnetx, 0

dataset = []
labels = []
graph_transformer = ToDGLGraph(vocab)
for subdir in os.listdir(c_directory):
    full_path = os.path.join(c_directory, subdir)
    for filename in os.listdir(full_path):
        full_file_path = os.path.join(full_path, filename)
        graph, label = dataset_generator(filename, full_file_path)
        graph = graph_transformer(graph)
        dataset.append(graph)
        labels.append(label)

labels_file = open("indigo_nobug_trans_noarith_O3_hetero_labels", "wb")
pickle.dump(labels, labels_file)

dgl.save_graphs("indigo_nobug_trans_noarith_O3_hetero.bin", dataset)




