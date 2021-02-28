#!/usr/bin/env bash
DIR="$(dirname $0)"
PARENT="$(dirname $DIR)"
. "$(dirname $PARENT)"/functions.lib

echo "Installing terminal utilities packages..."

PACKAGES=(
  curl
  wget
  htop
  the_silver_searcher
  xclip
)

install_packages $PACKAGES

echo "Finish installing terminal utilities packages."