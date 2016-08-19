#!/bin/bash

# This fixes any issues that may arise with the Wireless driver
# after each kernel update or installation.
#
# Damien Hunter (damien.hunter9@gmail.com) 26/12/2015
echo "Updates the Broadcom Wireless driver after each Kernel Update."
wait 5

sudo -i
apt-get install -y module-assistant wireless-tools broadcom-sta-common broadcom-sta-source
m-a a-i broadcom-sta

echo "blacklist brcm80211" >>/etc/modprobe.d/broadcom-sta-common.conf
update-initramfs -u -k $(uname -r)
modprobe -r b44 b43 b43legacy ssb brcm80211
modprobe wl
iwconfig
