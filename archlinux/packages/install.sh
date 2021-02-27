#!/usr/bin/env bash
DIR="$(dirname $0)"
. "$(dirname $DIR)"/functions.lib

FILES=(
  development
  tools
  utilities
  terminal-utilities
)

run_file $DIR $FILES

echo $DIR