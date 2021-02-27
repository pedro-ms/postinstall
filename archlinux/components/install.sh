#!/usr/bin/env bash
DIR="$(dirname $0)"
PARENT="$(dirname $DIR)"
. "$(dirname $PARENT)"/functions.lib

FILES=(
  xorg
  kernel
  bluetooth
  network
)

run_file $DIR $FILES