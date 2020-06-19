#!/bin/bash

find $HOME/.dotfiles/ -exec chmod +x {} \; # add executable permission to every file in this directory

# Install the prerrequisites
. prerrequisites.sh

. distro.sh # source the distro specific variables
. packages.sh # load the packages to install
# . helpers.sh # load helper functions

echo_info "Updating system"
_update

echo_info "Installing packages from the official repositories..."
_install core

echo_info "Installing packages from AUR repositories..."
_install aur

echo_info "Running Install files"
_run_install_files

ln -s $HOME/.dotfiles/.xinitrc $HOME/.xinitrc
