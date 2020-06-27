#!/bin/bash

# Involved packages: xorg-server xorg-xinit xorg-xrandr

echo_info "Linking .xinitrc..."

ln -s $HOME/.dotfiles/xorg/.xinitrc $HOME/.xinitrc
