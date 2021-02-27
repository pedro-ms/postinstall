#!/usr/bin/env bash

echo "Installing xorg..."

PACKAGES=(
  xorg-server
  xorg-apps
  xorg-xinit
  mesa
)

for PACKAGE in "${PACKAGES[@]}"; do
  echo "Installing ${PACKAGE}..."
  sudo pacman -S "$PACKAGE" --noconfirm --needed
done

echo "Finish installing xorg."