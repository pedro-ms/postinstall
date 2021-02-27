#!/usr/bin/env bash

echo "Installing network components..."

PACKAGES=(
  wpa_supplicant
  dialog
  networkmanager
  network-manager-applet
  dhclient
)

for PACKAGE in "${PACKAGES[@]}"; do
  echo "Installing ${PACKAGE}..."
  sudo pacman -S "$PACKAGE" --noconfirm --needed
done

echo "Finish installing network components."