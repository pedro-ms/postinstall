#!/usr/bin/env bash
DIR="$(dirname $0)"
. "$(dirname $DIR)"/functions.lib

FILES=(
  xorg
  kernel
  bluetooth
  network
)

run_file $DIR $FILES