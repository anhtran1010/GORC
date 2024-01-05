from dgl.data.utils import load_graphs
import pickle
import dgl

bug_graphs_file = "indigo_bug_trans_noarith_O1vocab_hetero.bin"
bug_labels_file = "indigo_bug_trans_noarith_O1vocab_hetero_labels" 
nobug_graphs_file = "indigo_nobug_trans_noarith_O1vocab_hetero.bin"
nobug_labels_file = "indigo_nobug_trans_noarith_O1vocab_hetero_labels"

bug_graphs = load_graphs(bug_graphs_file)[0]
with open(bug_labels_file, 'rb') as labels_file:
    bug_labels = pickle.load(labels_file)

nobug_graphs = load_graphs(nobug_graphs_file)[0]
with open(nobug_labels_file, 'rb') as labels_file:
    nobug_labels = pickle.load(labels_file)

all_graphs = bug_graphs + nobug_graphs
all_labels = bug_labels+nobug_labels

print(len(all_graphs))
print(len(all_labels))

all_labels_file = open("indigo_trans_noarith_O1vocab_hetero_labels", "wb")
pickle.dump(all_labels, all_labels_file)

dgl.save_graphs("indigo_trans_noarith_O1vocab_hetero_graphs.bin", all_graphs)