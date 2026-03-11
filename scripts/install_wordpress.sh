#!/bin/bash

echo "Downloading WordPress..."

cd /var/www/html

sudo rm -rf *

sudo wget https://wordpress.org/latest.tar.gz
sudo tar -xzf latest.tar.gz

sudo mv wordpress/* .
sudo rm -rf wordpress latest.tar.gz

sudo chown -R www-data:www-data /var/www/html

sudo systemctl restart apache2

echo "WordPress installed!"
