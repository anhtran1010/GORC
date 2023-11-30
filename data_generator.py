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
c_directory = 'test_source'
ir_directory = 'llvm_ir'
# graphs_set = 'graph_representations/graphs_set'
# viz_directory = 'graph_representations/visualize'
# bad_phrase = ', sysroot: "/Library/Developer/CommandLineTools/SDKs/MacOSX12.sdk", sdk: "MacOSX12.sdk"'
# with open("vocabs", "rb") as f:
#     current_vocab = pickle.load(f)

vocabs = {}
current_index = 0

def special_processing(ir_label_lines, graph, source_file):
    match = r'align (\d+),'
    datarace_node_num = []
    datarace_nodes = []

    for line in ir_label_lines:
        last_index = re.search(match, line).span()[1]
        pattern = line[:last_index]
        for node in graph.nodes.data('features'):
            node_num, node_text = node[0], node[1]
            if node_text:
                if pattern in node_text['full_text'][0]:
                    if node_num not in datarace_node_num:
                        datarace_node_num.append(node_num)
                        datarace_nodes.append(node)
    if len(ir_label_lines) != len(datarace_node_num):
        if source_file == "llvm_ir/DRB119-nestlock-orig-yes.ll":
            unique_num = datarace_node_num[1:]
        elif source_file == "llvm_ir/DRB180-miniAMR-yes.ll":
            biggest_node = 0
            unique_nodes = []
            unique_num = []
            for node, node_num in zip(datarace_nodes, datarace_node_num):
                if node_num > biggest_node and node_num != 1651 and node_num != 828:
                    biggest_node = node_num
                    unique_nodes.append(node)
                    unique_num.append(node_num)
        else:
            biggest_node = 0
            unique_nodes = []
            unique_num = []
            for node, node_num in zip(datarace_nodes, datarace_node_num):
                if node_num > biggest_node:
                    biggest_node = node_num
                    unique_nodes.append(node)
                    unique_num.append(node_num)
        assert len(ir_label_lines) == len(unique_num), "{} is not equal {}".format(len(ir_label_lines), len(unique_num))
        datarace_node_num = unique_num
    return datarace_node_num

def get_ir_line(ir_file, label_lines, graph):
    with open(ir_file, 'r') as ir:
        ir_source = ir.readlines()

    # convert ir file into blocks for easy processing
    ir_blocks = [list(group) for k, group in groupby(ir_source, lambda x: x == "\n") if not k]
    line_ref_block = ir_blocks[-1]

    ir_references = []
    for line in line_ref_block:
        for label in label_lines:
            line_num = "line: {}".format(label)
            if line_num in line:
                ir_references.append("!dbg " + line.split()[0])

    # For debug only
    ir_label_lines = []
    datarace_nodes = []
    ir_code_block = chain(*ir_blocks[1:-1])
    for line in ir_code_block:
        for ref in ir_references:
            if ref in line:
                if "load" in line or "store" in line:
                    line = line.strip()
                    ir_label_lines.append(line)
                    for node in graph.nodes.data('features'):
                        node_num, node_text = node[0], node[1]
                        if node_text:
                            if node_text['full_text'][0] == line:
                                datarace_nodes.append(node_num)
    if len(datarace_nodes) == 0:
        datarace_nodes = special_processing(ir_label_lines, graph, ir_file)
    return datarace_nodes


def get_label(source_file, ir_file=None, graph=None):
    with open(source_file, 'r') as source:
        source_code = source.readlines()
    labels = None
    label_pattern = r'@(\d+):(\d+):([WR])'
    for line in source_code:
        labels = re.findall(label_pattern, line)

        if len(labels) > 0:
            break
    label_lines = set([label[0] for label in labels])
    datarace_nodes = get_ir_line(ir_file, label_lines, graph)
    num_nodes = graph.number_of_nodes()
    labels = np.zeros(num_nodes)
    for datarace_node in datarace_nodes:
        labels[datarace_node] = 1
    return labels


def dataset_generator(file_name):
    # source_file = os.path.join(c_directory, file_name)
    # ir_file = os.path.join(ir_directory, file_name[:-2] + ".ll")
    # if not os.path.isfile(ir_file):
    #     if "cpp" in file_name:
    #         os.system("/home/abtran/clang_13/bin/clang++ -I/home/abtran/clang_13/include/c++/v1 -S -emit-llvm {} -c -o {} -fopenmp=libiomp5".format(source_file, ir_file))
    #     else:
    #         os.system("/home/abtran/clang_13/bin/clang -S -emit-llvm {} -c -o {} -fopenmp=libiomp5"
    #               .format(source_file, ir_file))
    with open(file_name, 'r') as ir_f:
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

    if "yes" in file_name:
        label = 1
    else:
        label = 0

    return IRnetx, label

        # label = get_label(source_file, ir_file, IRnetx)

        # return pMlIr, label
        # programl.save_graphs(pathlib.Path(graph_filename), [pMlIr])
        # graphs_set.append(pMlIr)
    # except:
    #     print("{} did not parse successfully".format(file_name))
    #     traceback.print_exc()

dataset = []
labels = []

for filename in os.listdir(ir_directory):
    if os.path.isfile(os.path.join(ir_directory, filename)) and "signaling.h" not in filename and "_fastmath" not in filename:   
        graph, label = dataset_generator(os.path.join(ir_directory, filename))
        for node in graph.nodes:
            current_node = graph.nodes[node]
            if current_node['text'] not in vocabs:
                vocabs[current_node['text']] = current_index
                current_index += 1
        labels.append(label)
        dataset.append(graph)

vocab = {"text": vocabs}
graph_transformer = ToDGLGraph(vocab)
dgl_set = [graph_transformer(graph) for graph in dataset]

labels_file = open("dataracebench_trans_noarith_hetero_labels", "wb")
pickle.dump(labels, labels_file)

dgl.save_graphs("dataracebench_trans_noarith_hetero_graphs.bin", dgl_set)

with open("trans_noarith_vocabs", "wb") as vf:
    pickle.dump(vocabs, vf)
# graph_file = open("train_graphs", "wb")
# pickle.dump(dataset, graph_file)

# data_path = pathlib.Path(graphs_set)
# programl.save_graphs(data_path, dataset)
# labels_file = open("graph_representations/test_labels", "wb")
# pickle.dump(labels, labels_file)




