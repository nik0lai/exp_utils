#!/usr/bin/env bash

#######################################
# Create conda virtual enviroment with 
# Python 2.7 and Psychopy
#
# For some reason specific versions of
# pyglet and pygame have to be installed
# using pip
#######################################

# Enviroment name
env_name=psypy27

# Activate conda commands in current shell
eval "$($HOME/miniconda/bin/conda shell.bash hook)"

# Create virt env
conda create -n $env_name python=2.7
# Activate env
conda activate $env_name
# Check the enviroment was created and is active
conda info --envs

# Install dependencies through conda
conda install numpy scipy matplotlib pandas pyopengl wxpython lxml openpyxl xlrd configobj pyyaml gevent pillow greenlet msgpack-python psutil pytables requests seaborn future

# Install pyglet
pip install pyglet==1.3.2
# conda install --channel conda-forge pyglet # this install 1.4.9

# Install dependencies through pip
pip install moviepy pyosf python-bidi psychopy_ext json_tricks

# Install psychopy 1.90.2 (apparently this is the last 
# version that works with Python 2.7
pip install psychopy==1.90.2

# Install pygame
pip install pygame==1.9.6
#conda install --channel cogsci pygame

# Install Spyder
conda install spyder
