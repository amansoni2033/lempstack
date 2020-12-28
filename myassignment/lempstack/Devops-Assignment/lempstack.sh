#!/bin/bash


                                        ################################# What is a LEMP Stack?####################################
# LEMP (Linux, Nginx, MySQL, PHP) stack is a common, free, and open-source web stack used for hosting web content in a Linux environment.
#LEMP is a variation of the ubiquitous LAMP stack used for developing and deploying web applications.Traditionally, LAMP consists of a Linux operating system , a Nginx (Pronounced as Engine-X) 
#web server, MySQL database server, and PHP for dynamic data processing. Due to its modular nature, the components can easily be swapped out. With LEMP, Apache is replaced with the lightweight yet 
#powerful Nginx.

# Step 1: Before we install the LEMP stack, it’s a good idea to update and upgrade  repository and software packages:

sudo apt update -y

sudo apt upgrade -y

#Step:2 Nginx install and configuration on Ubuntu 20.04.

sudo apt install nginx

sudo  systemctl start nginx

sudo nano  /var/www/html/index.html

sudo system reload nginx


#Google chrome  http://15.206.28.14/


# Step 3: Installing PHP and important php7.4 extensions.

sudo apt update -y

sudo apt-get install php-fpm php-mysql php-mbstring

#php Version

php -v

sudo apt -y install software-properties-common
sudo add-apt-repository ppa:ondrej/php

sudo apt-get install php7.4 php7.4-fpm php7.4-mysql php7.4-mbstring

sudo apt-get install php7.4-common php7.4-mysql php7.4-xml php7.4-xmlrpc php7.4-curl php7.4-gd php7.4-imagick php7.4-cli php7.4-dev php7.4-imap php7.4-mbstring php7.4-opcache php7.4-soap php7.4-zip php7>


# Step 4: Configuring PHP in NGINX

sudo rm -rf /etc/nginx/sites-available/default


sudo rm -rf /etc/nginx/sites-enabled/default


sudo nano /etc/nginx/sites-available/myphpconfig


sudo ln -s /etc/nginx/sites-available/myphpconfig /etc/nginx/sites-enabled

#Step 5:Test nginx configuration

sudo nginx -t


sudo systemctl restart nginx


sudo nano /var/www/html/info.php

#Google chrome  http://15.206.28.14/info.php

#Step 6: Installing MySQL database.

sudo apt-get install mysql-server

echo "Installing MySQL database is done "
 
mysql --version

mysql -u amansoni -p

sudo service mysql restart


#Step 7: Installing  and Configuration PHPMyAdmin with Nginx

sudo apt-get install phpmyadmin

echo "Now setting PHPMyAdmin for nginx"


sudo apt-get install phpmyadmin

echo "Now setting PHPMyAdmin for nginx"

sudo ln -s /usr/share/phpmyadmin /var/www/html

echo "Restart the nginx server"

sudo systemctl restart nginx

echo "Now phpmyadmin is available on your server. And we can check on 15.206.28.14/phpmyadmin"
