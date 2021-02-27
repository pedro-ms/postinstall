#!/usr/bin/env bash

echo "Installing kernel..."

PACKAGES=(
  linux-lts
)

for PACKAGE in "${PACKAGES[@]}"; do
  echo "Installing ${PACKAGE}..."
  sudo pacman -S "$PACKAGE" --noconfirm --needed
done

echo "Finish installing kernel."