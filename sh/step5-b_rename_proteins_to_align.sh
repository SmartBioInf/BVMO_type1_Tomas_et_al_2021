#!/bin/bash

source ~/.bashrc;

# load project configuration
source ../conf/config.txt

cat ${clustering_folder}/proteines_for_clustering.fasta \
| perl -p -e 's/>(.{1})\.{1}(.{2}).*_prot_(.{2}_?[^_|\s]+)(_|\s).*$/>\1\2_\3/' 

