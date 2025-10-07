#!/usr/bin/env bash
#
# Ansible managed

# Start clean
module purge

# Load the require modules
module load ohpc python/3.8 R/4.0

# Jupyter Notebook "script.sh".
#
# Ansible managed

# Launch the Jupyter Notebook Server
jupyter notebook --config="${CONFIG_FILE}"
#
#-end of script.jupyter.erb.j2.
