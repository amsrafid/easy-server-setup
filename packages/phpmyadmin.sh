#!/bin/sh

title "Starting phpMyAdmin installation"
sleep 1

sudo apt install phpmyadmin -y

sudo mv ./nginx/phpMyAdmin.conf /etc/nginx/conf.d/phpMyAdmin.conf
sudo systemctl restart nginx

alert_success "PhpMyAdmin installation has been completed successfully."
sleep 1
