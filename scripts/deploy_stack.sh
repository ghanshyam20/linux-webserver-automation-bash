#!/bin/bash

echo "Updating system..."
sudo apt update -y

echo "Installing Apache..."
sudo apt install apache2 -y

echo "Installing MySQL..."
sudo apt install mysql-server -y

echo "Installing PHP..."
sudo apt install php php-mysql libapache2-mod-php -y

echo "Restarting services..."
sudo systemctl restart apache2
sudo systemctl restart mysql

echo "LAMP stack installed successfully!"
