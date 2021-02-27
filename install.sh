#!/usr/bin/env bash
DIR="$(dirname $0)"

FILE=$DIR/archlinux/install.sh

sudo chmod +x $FILE
./$FILE