#!/bin/bash

echo_info "Installing Neovim..."
_install neovim

mkdir -p $HOME/.config/nvim/config
ln -s $HOME/.dotfiles/vim/config/autoclose.vim.symlink $HOME/.config/nvim/config/autoclose.vim
ln -s $HOME/.dotfiles/vim/init.vim.symlink $HOME/.config/nvim/init.vim
