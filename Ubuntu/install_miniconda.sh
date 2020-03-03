#!/usr/bin/env bash

####################################
# (Download) Install and update Miniconda
####################################

# Download
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh --output-document=$HOME/Downloads/miniconda.sh --no-clobber 

# Install Miniconda
bash $HOME/Downloads/miniconda.sh -b -p $HOME/miniconda

# Activate CONDA in shell
eval "$($HOME/miniconda/bin/conda shell.bash hook)"

# Update conda (instead of closing and opening 
# a new terminal the next script is simply run 
# in a new terminal instance).
gnome-terminal -e 'conda update -y conda'
