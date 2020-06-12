#!/bin/bash

# shellcheck source=distro.sh
. ../distro.sh
# shellcheck source=helpers.sh
. ../helpers.sh

echo_info "Installing rofi..."
_install rofi

echo_info "Symlink rofi config"
mkdir -p $HOME/.config/rofi
ln -s $HOME/.dotfiles/rofi/config.symlink $HOME/.config/rofi/config

echo_done "Rofi configuration!"
