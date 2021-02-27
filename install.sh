#!/usr/bin/env bash
DIR="$(dirname $0)"
. $DIR/functions.lib

# VARIABLES --------------------------------------
DIR="$(dirname $0)"
FILE=$DIR/archlinux/install.sh

FILES=(
  archlinux/install
  commons/install
)
# ------------------------------------------------

# COMMONS ----------------------------------------
run_file $DIR $FILES
# ------------------------------------------------