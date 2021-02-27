#!/usr/bin/env bash

echo "Installing development packages..."

PACKAGES=(
  base-devel
  jre-openjdk
  jdk-openjdk
  jdk11-openjdk
  jdk8-openjdk
  code
  git
  docker
  aws-cli
  redis
  meld
  dbeaver
  tilix
  vim
  postgresql
)

for PACKAGE in "${PACKAGES[@]}"; do
  echo "Installing ${PACKAGE}..."
  sudo pacman -S "$PACKAGE" --noconfirm --needed
done

echo "Finish installing development packages."