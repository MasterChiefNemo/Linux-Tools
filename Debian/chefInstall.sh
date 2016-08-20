#!/bin/bash

# Chef Download and Installation tool.
#
# Damien Hunter 25/7/2016 damien.hunter9@gmail.com

# Download and Install Chef
dnf update
curl -L https://www.opscode.com/chef/install.sh | sudo bash
echo 'export PATH="/opt/chef/embedded/bin:$PATH"' >> ~/.bash_profile && source ~/.bash_profile
