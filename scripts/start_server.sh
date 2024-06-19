#!/bin/bash
LOGFILE=/var/log/start_server.log

# Log the start time
echo "Starting server script at $(date)" >> $LOGFILE

# Navigate to the app directory
cd /var/www/html/LOTTO
echo "Changed directory to /var/www/html/LOTTO at $(date)" >> $LOGFILE

# Build the React Vite app
npm run build
echo "Built React Vite app at $(date)" >> $LOGFILE

# Start the app using PM2
pm2 start npm --name "vite-app" -- run start
echo "Started app with PM2 at $(date)" >> $LOGFILE

# Ensure PM2 starts on boot
pm2 startup systemd -u ubuntu --hp /home/ubuntu
pm2 save
echo "PM2 startup configured at $(date)" >> $LOGFILE

# Enable and start Nginx
sudo systemctl enable nginx
sudo systemctl start nginx
echo "Nginx started at $(date)" >> $LOGFILE

# Log script completion
echo "Server script completed at $(date)" >> $LOGFILE
