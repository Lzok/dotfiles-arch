#!/bin/bash

find $HOME/.dotfiles/ -exec chmod +x {} \; # add executable permission to every file in this directory

# Install the prerrequisites
. prerrequisites.sh

# . helpers.sh # load helper functions

echo_info "Updating system"
_update

#echo_info "Installing packages from the official repositories..."
#_install core

#echo_info "Installing packages from AUR repositories..."
#_install aur

# Core packages from official repository
echo_info "Installing packages with Pacman..."
sudo pacman -S --needed --noconfirm --removemake --cleanafter amd-ucode \
xorg-server xorg-xinit xorg-xrandr \
base-devel \
iproute2 \
nvidia-utils \
nvidia-lts \
alsa-utils \
alsa-plugins \
pulseaudio \
pulseaudio-alsa \
pavucontrol \
playerctl \
openssh \
i3-gaps \
alacritty \
git \
tmux \
neovim \
bat \
jq \
fzf \
curl \
diff-so-fancy \
feh \
figlet \
firefox-developer-edition \
flameshot \
neofetch \
pv \
ranger \
rofi \
tldr \
tree \
lsd \
unzip \
wget \
zsh \
python

# AUR Packages
echo_info "Installing AUR packages with Yay..."
yay -S --needed --noconfirm --answerdiff=None --removemake --cleanafter nvm \
nerd-fonts-iosevka \
ytop-bin \
zenith-bin \
compton-tryone-git \
vscodium-bin \
direnv \
polybar \
spotify \
spicetify-cli

echo_info "Running Install files"
_run_install_files

ln -s $HOME/.dotfiles/.xinitrc $HOME/.xinitrc
