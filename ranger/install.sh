#!/bin/bash

echo_info "Installing Ranger..."
_install ranger

echo_info "Symlink rc.conf..."
mkdir -p $HOME/.config/ranger
ln -s $HOME/.dotfiles/ranger/rc.conf.symlink $HOME/.config/ranger/rc.conf

echo_success "Ranger configuration!"
