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

# READ -------------------------------------------
echo "Enter email for ssh-key: " && read GIT_EMAIL && export GIT_EMAIL
echo "Enter passphrase (empty for no passphrase): " && read SSH_PASSPHRASE && export SSH_PASSPHRASE
# ------------------------------------------------

# COMMONS ----------------------------------------
run_file $DIR $FILES
# ------------------------------------------------