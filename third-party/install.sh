#!/usr/bin/env bash
DIR="$(dirname $0)"
. "$(dirname $DIR)"/functions.lib

FILES=(
  snapd
)

run_file $DIR $FILES

echo $0
echo "$(dirname $0)"