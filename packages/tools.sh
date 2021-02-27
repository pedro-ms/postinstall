#!/usr/bin/env bash

echo "Installing tools packages..."

PACKAGES=(
  flameshot
  discord
  libreoffice-still
  conky
  virtualbox
  virtualbox-host-modules-arch
)

for PACKAGE in "${PACKAGES[@]}"; do
  echo "Installing ${PACKAGE}..."
  sudo pacman -S "$PACKAGE" --noconfirm --needed
done

echo "Finish installing tools packages."