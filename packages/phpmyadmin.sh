#!/bin/sh

# ====================================================
#                   Action Variables
# ====================================================

PMA_PORT=5599
PMA_ROOT=/usr/share/phpmyadmin

# ====================================================
#               Sites Regular action
# ====================================================

title "Starting phpMyAdmin installation"
sleep 1

# Install Php

sudo apt install phpmyadmin -y

# Replace necessary variables to config file
# Move php my admin config file
# Restart nginx server

sed -i -e "s@#{PMA_PORT}@${PMA_PORT}@g
        s@#{PMA_ROOT}@${PMA_ROOT}@g" ./nginx/phpMyAdmin.conf &&
sudo mv ./nginx/phpMyAdmin.conf /etc/nginx/conf.d/phpMyAdmin.conf
sudo systemctl restart nginx

alert_success "PhpMyAdmin installation has been completed successfully."
sleep 1
