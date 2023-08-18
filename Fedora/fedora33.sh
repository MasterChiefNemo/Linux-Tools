#! /bin/bash

# Author Damien Hunter (damien.hunter9@gmail.com)
# (26/04/2020)
#
# Fedora Upgrade Tool. Upgrades to Fedora 38
# Please note, I accept no liability for any problems
# caused by this script, as I have ran it successfully.
#
# Updated: August 2023
#
# Damien Hunter damien.hunter9@gmail.com

sudo dnf upgrade --refresh -y
sudo dnf install dnf-plugin-system-upgrade -y
sudo dnf system-upgrade download --releasever=38 -y
sudo dnf system-upgrade reboot
