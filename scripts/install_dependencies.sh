#!/bin/bash
# Update the package list
sudo apt-get update -y

# Install Node.js and npm
sudo apt install npm -y

curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -

sudo apt install -y nodejs

# Install PM2 globally
sudo npm install -g pm2

# Navigate to the app directory
cd /var/www/html/LOTTO

# Install project dependencies
npm install

# Install Nginx
sudo apt-get install -y nginx
