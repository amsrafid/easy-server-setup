#!/bin/sh

# ====================================================
#                   Action Variables
# ====================================================

BASE_PATH=/var/www/html/home

# ====================================================
#               Sites Regular action
# ====================================================

title "Starting nginx installation"
sleep 1

# Install nginx for the system

sudo apt install nginx -y

# Create home page directory

sudo mkdir -p ${BASE_PATH}

# Replace base path from the config file
# Copy old default config file named to default.old
# Move current nginx default config file

sed -i -e "s@#{BASE_PATH}@${BASE_PATH}@g" ./nginx/default
sudo mv /etc/nginx/sites-available/default /etc/nginx/sites-available/default.old
sudo mv ./nginx/default /etc/nginx/sites-available/default

# Stop apache server
# Start nginx server

sudo systemctl stop apache2
sudo systemctl start nginx

alert_success "Nginx installation has been completed successfully."
sleep 1
