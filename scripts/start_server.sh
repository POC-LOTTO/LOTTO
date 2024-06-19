#!/bin/bash
# Navigate to the app directory
cd /var/www/html/LOTTO

# Build the React Vite app
npm run build



# Enable and start Nginx
sudo systemctl enable nginx
sudo systemctl start nginx


