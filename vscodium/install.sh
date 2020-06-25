#!/bin/bash

echo_info "Installing VS Codium..."
_install vscodium-bin

# 2020-06-17
# As of vscode v1.46.0 and higher, the extensions marketplace was moved from Microsoft Marketplace to
# a community maintained one called openvsx. For some reason, this change breaks the extensions installation
# via the CLI. Temporarily use this modified product.json file to be able to install the extensions
# til the new marketplace works ok. You can read more about this here: https://github.com/vscodium/vscodium/issues/418
# The comment with the answer used is this https://github.com/vscodium/vscodium/issues/418#issuecomment-643664182
# That modification is the only made in my product.json
echo_info "Copying product.json..."
sudo cp $HOME/.dotfiles/vscodium/product.json /usr/share/vscodium-bin/resources/app/product.json

echo_info "Installing VS Codium extensions..."
vscodium --install-extension coenraads.bracket-pair-colorizer
vscodium --install-extension ms-azuretools.vscode-docker
vscodium --install-extension editorconfig.editorconfig
vscodium --install-extension dbaeumer.vscode-eslint
vscodium --install-extension waderyan.gitblame
vscodium --install-extension zignd.html-css-class-completion
vscodium --install-extension xabikos.javascriptsnippets
vscodium --install-extension ms-vsliveshare.vsliveshare
vscodium --install-extension yzhang.markdown-all-in-one
vscodium --install-extension davidanson.vscode-markdownlint
vscodium --install-extension leizongmin.node-module-intellisense
vscodium --install-extension arcticicestudio.nord-visual-studio-code
vscodium --install-extension christian-kohler.path-intellisense
vscodium --install-extension esbenp.prettier-vscode
vscodium --install-extension stylelint.vscode-stylelint
vscodium --install-extension emmanuelbeziat.vscode-great-icons
vscodium --install-extension ms-python.python

# vscodium --install-extension vscodevim.vim
# vscodium --install-extension elmtooling.elm-ls-vscode
# vscodium --install-extension justusadam.language-haskell
# vscodium --install-extension vans.haskero

mkdir $HOME/.config/VSCodium
ln -s $HOME/.dotfiles/vscodium/settings.json $HOME/.config/VSCodium/User/settings.json
