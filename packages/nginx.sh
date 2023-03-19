#!/bin/sh

title "Starting nginx installation"
sleep 1

sudo apt install nginx -y

# Create home page directory
sudo mkdir -p /var/www/html/home

sudo mv /etc/nginx/sites-available/default /etc/nginx/sites-available/default.old
sudo mv ./nginx/default /etc/nginx/sites-available/default

sudo systemctl stop apache2
sudo systemctl start nginx

alert_success "Nginx installation has been completed successfully."
sleep 1
