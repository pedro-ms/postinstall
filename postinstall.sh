#!/usr/bin/env bash

# INIT -------------------------------------------
sudo pacman -Syy -noconfirm
# ------------------------------------------------

# PROCESS ----------------------------------------

sudo chmod +x components/install.sh
./components/install.sh

sudo chmod +x packages/install.sh
./packages/install.sh

# ------------------------------------------------

# FINISH -----------------------------------------
sudo pacman -Syu --noconfirm
sudo paccache -h
sudo pacman -Rns $(pacman -Qdtq) --noconfirm
flatpak update -y
# ------------------------------------------------