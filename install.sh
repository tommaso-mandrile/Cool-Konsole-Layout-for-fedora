#!/bin/bash

echo "[1/3] Installing fire script in /usr/local/bin/fire_effect..."

sudo cp ./BashCommands/fire.sh /usr/local/bin/fire_effect

echo "[2/3]Installing Packages..."

sudo dnf install -y btop
sudo dnf install -y cacafire
sudo dnf install -y fastfetch

echo "[3/3] All finished!"
