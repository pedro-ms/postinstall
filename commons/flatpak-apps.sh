#!/usr/bin/env bash
APPS=(
  com.calibre_ebook.calibre
  com.spotify.Client
  com.getpostman.Postman
  org.telegram.desktop
  com.jetbrains.IntelliJ-IDEA-Ultimate
  com.slack.Slack
)

echo "Installing flatpak apps..."

# INSTALL FLATPACK APPS
for APP in ${APPS[@]}; do
  sudo flatpak install flathub $APP -y
done

# UPDATE ALL FLATPACK APPS
sudo flatpak update

echo "Finish flatpak apps install."