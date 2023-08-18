#! /bin/bash
# This must be run with sudo and like my other scripts, it's run at your
# own risk. Installs required packages for phpmyadmin, installs it, then
# automatical restarts httpd.
# 
# Updated: August 2023
#
# Author: Damien Hunter damien.hunter9@gmail.com

echo "You run this at your own risk. Sleep 15 delay to quit if necessary!"
sleep 15
sudo apt-get upgrade -y
sudo apt install phpmyadmin php-mbstring php apache2 -y
sudo phpenmod mbstring
sudo systemctl enable apache2
sudo systemctl start apache2
sudo ln -s /etc/phpmyadmin/apache.conf /etc/apache2/conf-available/phpmyadmin.conf
sudo a2enconf phpmyadmin

sudo systemctl reload apache2
sudo systemctl restart apache2
sudo a2enconf phpmyadmin

echo "To run in the browser => http://127.0.0.1/phpmyadmin"
echo "Installs and starts Apache2 to use with PHP Admin. If you're running another HTTP Server, use systemctl to disable and stop them, as there may be conflicts running multiple http server"
echo "If you run into issues during the installation proceess or setup, please consult online documentation."
