#!/usr/bin/env bash
DIR="$(dirname $0)"
. "$(dirname $DIR)"/functions.lib

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

install_packages $PACKAGES

echo "Finish installing development packages."