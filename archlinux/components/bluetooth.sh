#!/usr/bin/env bash
DIR="$(dirname $0)"
. "$(dirname $DIR)"/functions.lib

echo "Instaliing bluetooth components..."

PACKAGES=(
  bluez
  bluez-utils
  blueberry
)

install_packages $PACKAGES

echo "Finish installing bluetooth components."