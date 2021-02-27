#!/usr/bin/env bash
PLUGINS=(
  python
  golang
)

echo "Adding asdf plugins..."

# ADD PLUGINS TO ASDF AND INSTALL LATEST VERSION
for PLUGIN in ${PLUGINS[@]}; do
  sudo asdf plugin-add $PLUGIN
  sudo asdf install $PLUGIN latest
done

# UPDATE ALL FLATPACK APPS
sudo asdf update

echo "Finish asdf plugins add."