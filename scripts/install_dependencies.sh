#!/bin/bash
# Update the package list
sudo apt-get update -y

# Install Node.js and npm
sudo apt-get install -y nodejs npm



# Ensure the correct ownership of the application directory
sudo chown -R ubuntu:ubuntu /var/www/html/LOTTO
sudo chmod -R 755 /var/www/html/LOTTO

# Navigate to the app directory
cd /var/www/html/LOTTO

# Install project dependencies
npm install

# Install Nginx
sudo apt-get install -y nginx
