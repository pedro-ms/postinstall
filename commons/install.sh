#!/usr/bin/env bash
DIR="$(dirname $0)"
. "$(dirname $DIR)"/functions.lib

FILES=(
  flatpak-apps
  aliases
)

run_file $DIR $FILES