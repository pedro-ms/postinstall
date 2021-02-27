#!/usr/bin/env bash

echo "Instaliing bluetooth components..."

PACKAGES=(
  bluez
  bluez-utils
  blueberry
)

for PACKAGE in "${PACKAGES[@]}"; do
  echo "Installing ${PACKAGE}..."
  sudo pacman -S "$PACKAGE" --noconfirm --needed
done

echo "Finish installing bluetooth components."