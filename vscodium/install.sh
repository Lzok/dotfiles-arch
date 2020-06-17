#!/bin/bash

# shellcheck source=distro.sh
. ../distro.sh
# shellcheck source=helpers.sh
. ../helpers.sh

echo_info "Installing VS Codium..."
_install vscodium-bin

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
ln -sf $HOME/.dotfiles/vscodium/settings.json $HOME/.config/VSCodium/User/settings.json
