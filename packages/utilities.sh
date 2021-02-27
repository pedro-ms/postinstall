#!/usr/bin/env bash
DIR="$(dirname $0)"
. "$(dirname $DIR)"/functions.lib

echo "Installing utilities packages..."

PACKAGES=(
  flatpak
  pacman-contrib
)

install_packages $PACKAGES

echo "Finish installing utilities packages."