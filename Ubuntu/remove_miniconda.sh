#!/usr/bin/env bash

####################################
# (Download) Install and update Miniconda
####################################

echo 
echo Removing CONDA
echo 

# Get conda info path
#conda_path=$(conda info | grep 'active env location : ')
# Get only path
#conda_path=${conda_path:26}

# Remove Miniconda
#rm -rf $conda_path
rm -rf $HOME/miniconda

# Remove hidden files
rm -rf $HOME/.condarc $HOME/.conda $HOME/.continuum

# You probably want to check this profile file and look for entries added by conda
# ~/.bashrc
