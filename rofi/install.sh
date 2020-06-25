#!/bin/bash

echo_info "Installing rofi..."
_install rofi

echo_info "Symlink rofi config"
mkdir -p $HOME/.config/rofi
ln -s $HOME/.dotfiles/rofi/config.symlink $HOME/.config/rofi/config

echo_success "Rofi configuration!"
