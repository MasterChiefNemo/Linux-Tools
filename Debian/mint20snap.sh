#!/bin/bash

# Installs snap for Linux Mint 20, allowing users to download apps
# from https://snapcraft.io/ in the command line. To search for snaps to install
# in the command line, use
#
# 'sudo snap find search_term'
#
# Author: Damien Hunter damien.hunter9@gmail.com
# Updated, August 2023

sudo mv /etc/apt/preferences.d/nosnap.pref ~
sudo apt install snapd
