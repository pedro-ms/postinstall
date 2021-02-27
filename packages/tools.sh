#!/usr/bin/env bash
DIR="$(dirname $0)"
. "$(dirname $DIR)"/functions.lib

echo "Installing tools packages..."

PACKAGES=(
  flameshot
  discord
  libreoffice-still
  conky
  virtualbox
  virtualbox-host-modules-arch
)

install_packages $PACKAGES

echo "Finish installing tools packages."