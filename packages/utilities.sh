#!/usr/bin/env bash

echo "Installing utilities packages..."

PACKAGES=(
  flatpak
  pacman-contrib
)

for PACKAGE in "${PACKAGES[@]}"; do
  echo "Installing ${PACKAGE}..."
  sudo pacman -S "$PACKAGE" --noconfirm --needed
done

echo "Finish installing utilities packages."