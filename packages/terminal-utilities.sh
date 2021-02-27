#!/usr/bin/env bash

echo "Installing terminal utilities packages..."

PACKAGES=(
  curl
  wget
  htop
  the_silver_searcher
)

for PACKAGE in "${PACKAGES[@]}"; do
  echo "Installing ${PACKAGE}..."
  sudo pacman -S "$PACKAGE" --noconfirm --needed
done

echo "Finish installing terminal utilities packages."