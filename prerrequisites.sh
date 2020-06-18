#!/bin/bash

# Prerrequisites I need to install the whole system
# base-devel, yay and git (you have git already installed because you need to git clone this repo)

. helpers.sh # load helper functions

echo_info "Installing base-devel package..."
sudo pacman -S base-devel

echo_info "Cloning yay git repository..."
git clone https://aur.archlinux.org/yay.git
cd yay

echo_info "Building yay..."
makepkg -si
