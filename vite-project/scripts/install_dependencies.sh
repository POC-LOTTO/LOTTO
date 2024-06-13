#!/bin/bash

# Update the package list
sudo apt-get update -y

# Install Node.js and npm
sudo apt-get install -y nodejs npm

# Install PM2 globally
sudo npm install -g pm2

# Install Nginx
sudo apt-get install -y nginx
