#!/bin/bash

# Prerrequisites I need to install the whole system
# base-devel, yay and git (you have git already installed because you need to git clone this repo)

. helpers.sh # load helper functions

# I use reflector to optimize the mirrors before install the system.
# https://wiki.archlinux.org/index.php/Reflector
sudo pacman --needed --noconfirm -S reflector

# Backup mirrors
sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak

# Run reflector to select the HTTPS mirrors synchronized within the last 24 hours, sort them by download speed, and overwrite the file /etc/pacman.d/mirrorlist:
sudo reflector --age 24 --protocol https --sort rate --save /etc/pacman.d/mirrorlist

# Update
sudo pacman -Syy

echo_info "Installing base-devel package..."
sudo pacman -S base-devel

echo_info "Cloning yay git repository..."
git clone https://aur.archlinux.org/yay.git
cd yay

echo_info "Building yay..."
makepkg -sir
