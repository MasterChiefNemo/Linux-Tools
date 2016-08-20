#!/bin/bash

# Installs a tool to increase Battery life efficiency
# and improve RAM efficiency.
#
# Damien Hunter (damien.hunter9@gmail.com) 26/12/2015
sudo add-yum-repository ppa:linrunner/tlp
sudo yum update
sudo yum install tlp tlp-rdw -y
sudo tlp start

# Zram tool to increase Ram efficency.
sudo yum install -y  zram
