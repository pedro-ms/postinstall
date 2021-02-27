#!/usr/bin/env bash
REPOSITORY="https://aur.archlinux.org/yay.git" 
DIRECTORY="~/.yay"

echo "Installing yay..."

if [ -d "$DIRECTORY" ]; then rm -Rf $DIRECTORY; fi

git clone "$REPOSITORY" "$DIRECTORY"

(cd "$DIRECTORY" && makepkg -si --noconfirm) 

echo "Finish installing yay."
