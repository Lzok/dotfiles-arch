#!/bin/bash

# Basic python3 installation with pip and pynvim for nvim support.
# In the future better to have python in a virtualenv

sudo pacman --noconfirm -S python

# Install pip no-root
python3 -m ensurepip --user

# Upgrade pip
python3 -m pip install --upgrade pip --user

# Install pynvim
python3 -m pip install --user --upgrade pynvim
