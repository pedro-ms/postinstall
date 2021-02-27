#!/usr/bin/env bash
# VARIABLES --------------------------------------
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
  curl
  wget
  htop
  silversearcher-ag
  flameshot
  discord
  steam
  libreoffice-still
  conky
  virtualbox
  virtualbox-host-modules-arch
)

FLATPAK_APPS=(
  com.calibre_ebook.calibre
  com.spotify.Client
  com.getpostman.Postman
  org.telegram.desktop
  com.jetbrains.IntelliJ-IDEA-Ultimate
  com.slack.Slack
)
# ------------------------------------------------

# INIT -------------------------------------------

## UPDATE REPOSITORY
sudo pacman -Syy -noconfirm
# ------------------------------------------------

# PROCESS ----------------------------------------
echo "Installing packages..."

for PACKAGE in "${PACKAGES[@]}"; do
  echo "Installing ${PACKAGE}..."
  sudo pacman -S "$PACKAGE" --noconfirm --needed
done

echo "Finish packages install."

echo "Installing flatpak apps..."

for APP in ${FLATPAK_APPS[@]}; do
  flatpak install flathub $APP
done

echo "Finish flatpak apps install."
# ------------------------------------------------

# FINISH -----------------------------------------
sudo pacman -Syu --noconfirm
sudo paccache -h
sudo pacman -Rns $(pacman -Qdtq) --noconfirm
flatpak update
# ------------------------------------------------