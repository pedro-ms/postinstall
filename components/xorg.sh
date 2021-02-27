#!/usr/bin/env bash
DIR="$(dirname $0)"
. "$(dirname $DIR)"/functions.lib

echo "Installing xorg..."

PACKAGES=(
  xorg-server
  xorg-apps
  xorg-xinit
  mesa
)

install_packages $PACKAGES

echo "Finish installing xorg."