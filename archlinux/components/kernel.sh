#!/usr/bin/env bash
DIR="$(dirname $0)"
. "$(dirname $DIR)"/functions.lib

echo "Installing kernel..."

PACKAGES=(
  linux-lts
)

install_packages $PACKAGES

echo "Finish installing kernel."