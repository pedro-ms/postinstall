#!/usr/bin/env bash
REPOSITORY="https://aur.archlinux.org/snapd.git" 
DIRECTORY=~/.snapd

echo "Installing snapd..."

if [ -d "$SNAPD_DIRECTORY" ]; then rm -Rf $DIRECTORY; fi

git clone "$REPOSITORY" "$DIRECTORY"

(cd "$DIRECTORY" && makepkg -si --noconfirm && sudo systemctl enable --now snapd.socket && sudo ln -s /var/lib/snapd/snap /snap) 

echo "Finish installing snapd."