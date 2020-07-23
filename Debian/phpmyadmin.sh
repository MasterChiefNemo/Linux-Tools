#! /bin/bash
# This must be run with sudo and like my other scripts, it's run at your
# own risk. Installs required packages for phpmyadmin, installs it, then
# automatical restarts httpd.
#
# Author: Damien Hunter (damien.hunter9@gmail.com)

sudo apt-get upgrade -y
sudo apt install phpmyadmin php-mbstring php nginx -y
sudo phpenmod mbstring
sudo systemctl restart apache2
sudo ln -s /etc/phpmyadmin/apache.conf /etc/apache2/conf-available/phpmyadmin.conf
sudo a2enconf phpmyadmin

sudo systemctl restart apache2
sudo a2enconf phpmyadmin
