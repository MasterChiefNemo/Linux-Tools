#! /bin/bash

# Fedora Upgrade Tool. Upgrades to Fedora 31

sudo dnf upgrade --refresh -y
sudo dnf install dnf-plugin-system-upgrade -y
sudo dnf system-upgrade download --releasever=31 -y
sudo dnf system-upgrade reboot
