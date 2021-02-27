#!/usr/bin/env bash
DIR="$(dirname $0)"
PARENT="$(dirname $DIR)"
. "$(dirname $PARENT)"/functions.lib

FILES=(
  snapd
  yay
  asdf
)

run_file $DIR $FILES