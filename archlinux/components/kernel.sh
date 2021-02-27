#!/usr/bin/env bash
DIR="$(dirname $0)"
PARENT="$(dirname $DIR)"
. "$(dirname $PARENT)"/functions.lib

echo "Installing kernel..."

PACKAGES=(
  linux-lts
)

install_packages $PACKAGES

echo "Finish installing kernel."