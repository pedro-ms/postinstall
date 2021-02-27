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

for APP in ${APPS[@]}; do
  sudo flatpak install flathub $APP -y
done

sudo flatpak update

echo "Finish flatpak apps install."