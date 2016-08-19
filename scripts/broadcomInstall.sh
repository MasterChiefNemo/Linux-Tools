#!/bin/bash

# Installs the Broadcom Driver for wireless cards.
#
# Damien Hunter (damien.hunter9@gmail.com) 26/12/2015

echo "Wireless Driver Installion. Be sure to connect to a wired network!"
wait 5
sudo apt-get update && sudo apt-get upgrade # Do an Update and Upgrade.

echo ""
sudo apt-get install -y b43-fwcutter firmware-b43-installer # Install package.
sudo apt-get install -y wicd # For find and choosing wirelss networks.
echo "Done. Please reboot and try a wireless connection."
echo
wait 5
