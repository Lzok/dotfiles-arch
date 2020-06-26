#!/bin/bash

echo_info "Installing rofi..."
_install rofi

echo_info "Symlink rofi config"
mkdir -p $HOME/.config/rofi/themes
ln -s $HOME/.dotfiles/rofi/config.symlink $HOME/.config/rofi/config
ln -s $HOME/.dotfiles/rofi/themes/custom-nord.rasi $HOME/.config/rofi/themes/custom-nord.rasi

echo_success "Rofi configuration!"
