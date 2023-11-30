import os
import re

c_directory = 'Indigo_bug'

for subdir in os.listdir(c_directory):
    full_path = os.path.join(c_directory, subdir)
    print(full_path)
    for filename in os.listdir(full_path):
        full_file_path = os.path.join(full_path, filename)
        with open(full_file_path, "r") as file:
            file_contents = file.read()

        start_position = file_contents.find("void serial_code(int* nindex, int* nlist, data_t* data1, data_t* data2, int numv)")

        modified_contents = file_contents.replace("#include \"indigo_openmp.h\"", "")
        modified_contents = modified_contents[:start_position-28]
        with open(full_file_path, "w") as file:
            file.write(modified_contents)