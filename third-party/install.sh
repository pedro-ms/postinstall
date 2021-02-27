#!/usr/bin/env bash
DIR="$(dirname $0)"
. "$(dirname $DIR)"/functions.lib

FILES=(
  snapd
  yay
  asdf
)

run_file $DIR $FILES