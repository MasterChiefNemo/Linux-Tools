#! /bin/bash
# This must be run with sudo and like my other scripts, it's run at your
# own risk. Installs required packages for phpmyadmin, installs it, then
# automatical restarts httpd.

sudo dnf -y install httpd php php-cli php-php-gettext php-mbstring php-mcrypt php-mysqlnd php-pear php-curl php-gd php-xml php-bcmath php-zip -y

sudo systemctl start httpd
sudo systemctl enable httpd

sudo firewall-cmd --add-service={http,https} --permanent
sudo firewall-cmd --reload

sudo dnf install phpMyAdmin -y

sudo php -v
sudo systemctl restart httpd

echo "The HTTPD Server has been restarted. You can "
echo "now access your phpmyadmin install at 127.0.0.1/phpmyadmin/"

