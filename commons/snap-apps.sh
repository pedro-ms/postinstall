#!/usr/bin/env bash
APPS=()

CLASSIC_APPS=()

echo "Installing snap apps..."

# INSTALL SNAP APPS
for APP in ${APPS[@]}; do
  sudo snap install $APP
done

# INSTALL SNAP APPS WITH '--classic' PARAM
for APP in ${CLASSIC_APPS[@]}; do
  sudo snap install $APP --classic
done

# REFRESH ALL SNAP APPS
sudo snap refresh 

echo "Finish snap apps install."

