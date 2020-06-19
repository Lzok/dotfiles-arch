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
    # core = My "core" dependencies from the official repository
    if [[ $1 == "core" ]]; then
      for pkg in "${PKGS[@]}"; do
        echo_info "Installing ${pkg}..."
        sudo "$PKGMN" "$PKGI" "$pkg" "${PKGOPT[@]}"
        echo_success "Installed ${pkg}"
      done
    elif [[ $1 == "aur" ]]; then
      for pkg in "${AUR[@]}"; do
        echo_info "Installing ${pkg} from AUR..."
        yay -Sy "$pkg" --needed --noconfirm
        echo_success "Installed ${pkg} from AUR."
      done
    else
      echo_info "Installing package ${1}..."
      sudo "$PKGMN" "$PKGI" "$1"
    fi
}

function _update() {
    if [[ $1 != "system" ]]; then
      echo_info "Updating system packages..."
      sudo "$PKGMN" "$PKGU" "${PKGOPT[@]}"
      echo_info "Updated system packages."
    else
      echo_info "Updating $1"
      "$PKGMN" "$PKGI" "$1"
      echo_success "Updated $1"
    fi
}

function _run_install_files() {
  for filename in $(echo $HOME/.dotfiles/**/install.sh | tr " " "\n")
  do
      source $filename
  done
}