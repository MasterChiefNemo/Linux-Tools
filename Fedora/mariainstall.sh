#! /bin/bash

# Install and Start MariaDB. It must be set up and run with sudo. You
# run this at your own risk.
#
# Damien Hunter damien.hunter9@gmail.com
# See https://www.if-not-true-then-false.com/2013/install-mariadb-on-fedora-centos-rhel/
# for full set up and configuration notes.

sudo dnf install mariadb mariadb-server -y # Install Mariadb
systemctl enable mariadb.service # Enable and Start Mariadb
systemctl start mariadb.service

/usr/bin/mysql_secure_installation # Run the installation and set root password

# If you want to add the ability to connect remotely, see the link above.
