#!/usr/bin/env bash
DIR="$(dirname $0)"
. "$(dirname $DIR)"/functions.lib

echo "Installing network components..."

PACKAGES=(
  wpa_supplicant
  dialog
  networkmanager
  network-manager-applet
  dhclient
)

install_packages $PACKAGES

echo "Finish installing network components."