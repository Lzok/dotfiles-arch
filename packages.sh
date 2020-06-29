#!/bin/bash

export PKGS=(
    # CPU Microde files (AMD CPU)
    amd-ucode

    # CPU Microde files (Intel CPU) - I have AMD -
    # intel-ucode

    # Xorg packages
    xorg-server
    xorg-xinit
    xorg-xrandr
    xorg-font-util
    xorg-mkfontscale

    # 3D support for Intel or AMD graphics
    # mesa

    base-devel
    iproute2
    # net-tools (deprecated in favor of iproute2)

    # Nvidia driver packages
    # nvidia
    nvidia-utils
    nvidia-lts # because I use lts Linux kernel

    # Audio
    alsa-utils # https://alsa.opensrc.org
    alsa-plugins
    pulseaudio
    pulseaudio-alsa
    pavucontrol
    playerctl # https://github.com/altdesktop/playerctl

    openssh
    i3-gaps
    # alacritty # alacritty/install.sh
    git
    # tmux # tmux/install.sh
    # neovim # vim/install.sh
    bat
    jq
    fzf
    curl
    diff-so-fancy
    feh
    figlet
    firefox-developer-edition
    flameshot
    neofetch
    pv
    # ranger # ranger/install.sh
    rofi
    tldr
    tree
    lsd
    unzip
    wget
    # zsh # zsh/install.sh
    # python # python/install.sh

    # htop # I'm using ytop-bin from AUR
    # exa
    # telegram-desktop
    # xclip 
)

export AUR=(
    # nvm #Node JS Version Manager nvm/install.sh
    # nerd-fonts-iosevka # Broken at 2020-06-29
    ytop-bin
    zenith-bin
    compton-tryone-git
    # vscodium-bin # vscodium/install.sh
    direnv
    # polybar # polybar/install.sh
    #spotify # spotify/install.sh
    #spicetify-cli # spotify/install.sh

    # watchexec # Executes commands in response to file modifications
    # mailspring
    # franz
    # betterlockscreen
)