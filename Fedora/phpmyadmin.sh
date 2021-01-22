#! /bin/bash
# This must be run with sudo and like my other scripts, it's run at your
# own risk. Installs required packages for phpmyadmin, installs it, then
# automatical restarts httpd.

sudo dnf install httpd php php-cli php-json php-mbstring php-pdo php-pecl-zip php-mysqlnd -y
sudo systemctl start mariadb
sudo systemctl enable mariadb

cd /var/www/html
sudo wget https://files.phpmyadmin.net/phpMyAdmin/4.9.4/phpMyAdmin-4.9.4-all-languages.zip
sudo unzip phpMyAdmin-4.9.4-all-languages.zip
sudo mv phpMyAdmin-4.9.4-all-languages phpmyadmin

sudo chown -R apache:apache /var/www/html/phpmyadmin
sudo cd /var/www/html/phpmyadmin
sudo mv config.sample.inc.php config.inc.php
