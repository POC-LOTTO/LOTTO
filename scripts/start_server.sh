#!/bin/bash
# Log the start time
echo "Starting server script at $(date)" >> /var/log/start_server.log

# Navigate to the app directory
cd /var/www/html/LOTTO

# Log directory change
echo "Changed directory to /var/www/html/LOTTO at $(date)" >> /var/log/start_server.log

# Ensure PM2 starts on boot
echo "Setting up PM2 startup at $(date)" >> /var/log/start_server.log
pm2 startup systemd -u $USER --hp /home/$USER

# Log PM2 startup setup
echo "PM2 startup setup completed at $(date)" >> /var/log/start_server.log

# Start the app using PM2
echo "Starting app with PM2 at $(date)" >> /var/log/start_server.log
pm2 start npm --name "vite-app" -- run start

# Save the PM2 process list
echo "Saving PM2 process list at $(date)" >> /var/log/start_server.log
pm2 save

# Enable and start Nginx
echo "Enabling and starting Nginx at $(date)" >> /var/log/start_server.log
sudo systemctl enable nginx
sudo systemctl start nginx

# Log script completion
echo "Server script completed at $(date)" >> /var/log/start_server.log
