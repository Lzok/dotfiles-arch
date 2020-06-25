#!/bin/bash

echo_info "Installing Spotify Desktop..."
_install spotify

# Before applying Spicetify, you need to gain write permission on Spotify files
sudo chmod a+wr /opt/spotify
sudo chmod a+wr /opt/spotify/Apps -R

_install spicetify-cli


mkdir -p $HOME/.config/spicetify/Themes
ln -s $HOME/.dotfiles/spotify/config.ini.symlink $HOME/.config/spicetify/config.ini
ln -s $HOME/.dotfiles/spotify/themes/Nord $HOME/.config/spicetify/Themes

# Set config
spicetify config current_theme Nord

# Backup and apply config
spicetify backup apply
