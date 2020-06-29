#!/bin/bash

mkdir -p iosevka/tmp
cd iosevka
wget "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Iosevka.zip"
unzip Iosevka.zip -d tmp
cd tmp
find -name '*Windows*' -delete
sudo mv ./* /usr/share/fonts/TTF/
sudo chown root:root /usr/share/fonts/TTF/*

cd ..
rm -rf tmp/

echo_info "Updating font cache..."
fs-cache -s
mkfontscale /usr/share/fonts/TTF
mkfontdir /usr/share/fonts/TTF
echo_info "Updated font cache."
