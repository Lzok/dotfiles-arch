#!/bin/bash
blue=$(tput setaf 4)
green=$(tput setaf 2)
red=$(tput setaf 1)
yellow=$(tput setaf 3)
normal=$(tput sgr0)

function echo_error() {
  printf "[${red}!!${normal}] $1 \n"
}

function echo_warning() {
  printf "[${yellow}/\${normal}] $1 \n"
}

function echo_success() {
  printf "[${green}OK${normal}] $1 \n"
}

function echo_info() {
  printf "[${blue}..${normal}] $1 \n"
}

function _install() {
    pkgs=("$@")
    echo_info "Installing ${pkgs[@]}..."
    "$PKGMN" "$PKGI" "${pkgs[@]}" "${PKGOPT[@]}"
    echo_success "Installed ${pkgs[@]}"
}

function _update() {
    echo_info "Updating $1"
    "$PKGMN" "$PKGU" "$1" "${PKGOPT[@]}"
    echo_success "Updated $1"
}

function _run_install_files() {
  for filename in $(echo $HOME/.dotfiles/**/install.sh | tr " " "\n")
  do
      source $filename
  done
}