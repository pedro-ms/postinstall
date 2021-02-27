#!/usr/bin/env bash
DIR="$(dirname $0)"
PARENT="$(dirname $DIR)"
. "$(dirname $PARENT)"/functions.lib

FILES=(
  development
  tools
  utilities
  terminal-utilities
)

run_file $DIR $FILES