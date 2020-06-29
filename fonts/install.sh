#!/bin/bash

mkdir -p iosevka/tmp
sudo mkdir -p /usr/share/fonts/TTF
cd iosevka
wget "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Iosevka.zip"
unzip Iosevka.zip -d tmp
cd tmp
find -name '*Windows*' -delete
sudo mv ./* /usr/share/fonts/TTF/
sudo chown root:root /usr/share/fonts/TTF/*

cd ..
rm -rf tmp/

# Reference https://aur.archlinux.org/cgit/aur.git/tree/nerd-fonts-iosevka.install?h=nerd-fonts-iosevka
echo_info "Updating font cache..."
sudo fc-cache -s
sudo mkfontscale /usr/share/fonts/TTF
sudo mkfontdir /usr/share/fonts/TTF
echo_info "Updated font cache."
