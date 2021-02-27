#!/usr/bin/env bash

# XORG -------------------------------------------
sudo chmod +x components/xorg.sh
./components/xorg.sh
# ------------------------------------------------

# KERNEL -----------------------------------------
sudo chmod +x components/kernel.sh
./components/kernel.sh
# ------------------------------------------------

# BLUEETOOTH -------------------------------------
sudo chmod +x components/bluetooth.sh
./components/bluetooth.sh
# ------------------------------------------------

# NETWORK ----------------------------------------
sudo chmod +x components/network.sh
./components/network.sh
# ------------------------------------------------

