#!/usr/bin/env bash
DIR="$(dirname $0)"
. "$(dirname $DIR)"/functions.lib

FILES=(
  flatpak-apps
  snap-apps
  aliases
  asdf-plugins
)

run_file $DIR $FILES