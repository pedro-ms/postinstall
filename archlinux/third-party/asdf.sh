#!/usr/bin/env bash
REPOSITORY="https://github.com/asdf-vm/asdf.git"
DIRECTORY="~/.asdf"
BASHRC="~/.bashrc"

echo "Installing asdf..."

if [ -d "$DIRECTORY" ]; then rm -Rf $DIRECTORY; fi

git clone "$REPOSITORY" "$DIRECTORY"

(cd "$DIRECTORY" && git checkout "$(git describe --abbrev=0 --tags)") 

echo '. $HOME/.asdf/asdf.sh' >> $BASHRC
echo '. $HOME/.asdf/completions/asdf.bash' >> $BASHRC

echo "Finish installing asdf."