#!/usr/bin/env bash
DIR="$(dirname $0)"
. "$(dirname $DIR)"/functions.lib

echo "Installing terminal utilities packages..."

PACKAGES=(
  curl
  wget
  htop
  the_silver_searcher
)

install_packages $PACKAGES

echo "Finish installing terminal utilities packages."