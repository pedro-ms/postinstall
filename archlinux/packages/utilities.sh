#!/usr/bin/env bash
DIR="$(dirname $0)"
PARENT="$(dirname $DIR)"
. "$(dirname $PARENT)"/functions.lib

echo "Installing utilities packages..."

PACKAGES=(
  flatpak
  pacman-contrib
)

install_packages $PACKAGES

echo "Finish installing utilities packages."