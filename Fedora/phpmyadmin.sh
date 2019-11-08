#! /bin/bash

sudo dnf -y install httpd php php-cli php-php-gettext php-mbstring php-mcrypt php-mysqlnd php-pear php-curl php-gd php-xml php-bcmath php-zip -y

sudo systemctl start httpd
sudo systemctl enable httpd

sudo firewall-cmd --add-service={http,https} --permanent
sudo firewall-cmd --reload

sudo dnf -y install phpMyAdmin -y
