#!/bin/bash

export PKGMN=pacman # The package manager to use
export PKGOPT=(--needed --noconfirm) # The options passed when installing packages
export PKGU=-Syu # Updating options
export PKGI=-Sy # Installation options