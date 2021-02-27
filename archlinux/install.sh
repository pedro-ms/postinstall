#!/usr/bin/env bash
DIR="$(dirname $0)"
. "$(dirname $DIR)"/functions.lib

# VARIABLES --------------------------------------
FILES=(
  components/install
  packages/install
  third-party/install
)
# ------------------------------------------------

# INIT -------------------------------------------
sudo pacman -Syy --noconfirm
# ------------------------------------------------

# PROCESS ----------------------------------------
run_file $DIR $FILES
# ------------------------------------------------

# FINISH -----------------------------------------
sudo pacman -Syu --noconfirm
sudo paccache -h
sudo pacman -Rns $(pacman -Qdtq) --noconfirm
# ------------------------------------------------