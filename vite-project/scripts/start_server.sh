#!/bin/bash

# Navigate to the app directory
cd /var/www/html/lotto/LOTTO

# Ensure PM2 starts on boot
pm2 startup systemd
sudo env PATH=$PATH:/usr/bin pm2 startup systemd -u $USER --hp /home/$USER
pm2 save

# Enable and start Nginx
sudo systemctl enable nginx
sudo systemctl start nginx

# Restart all PM2 managed apps
pm2 restart all
