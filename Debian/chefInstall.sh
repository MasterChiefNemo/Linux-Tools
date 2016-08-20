#!/bin/bash

# Chef Download and Installation tool for Debian
# based Linux Operating Systems.
#
# Damien Hunter 25/7/2016 damien.hunter9@gmail.com

# Download and Install Chef
apt-get update
curl -L https://www.opscode.com/chef/install.sh | sudo bash
echo 'export PATH="/opt/chef/embedded/bin:$PATH"' >> ~/.bash_profile && source ~/.bash_profile
