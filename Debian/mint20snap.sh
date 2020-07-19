#!/bin/bash

# Installs snap for Linux Mint 20, allowing users to download apps
# from https://snapcraft.io/
#
# Author: Damien Hunter (damien.hunter9@gmail.com)

sudo mv /etc/apt/preferences.d/nosnap.pref ~
sudo apt install snapd
