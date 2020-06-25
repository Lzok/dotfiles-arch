#!/bin/bash

echo_info "Installing Git LFS..."
_install git

echo_info "Symlink ~/.gitconfig"
ln -s "$HOME/.dotfiles/git/gitconfig" "$HOME/.gitconfig"

echo_success "Git configuration!"