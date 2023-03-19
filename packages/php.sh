#!/bin/sh

title "Starting PHP installation"
sleep 1

# Install PPA

echo | sudo add-apt-repository ppa:ondrej/php

sudo apt update

# Install php v8.2.x

sudo apt install php8.2 -y
sudo apt-get install -y php8.2-cli php8.2-common php8.2-mysql php8.2-zip php8.2-gd php8.2-mbstring php8.2-curl php8.2-xml php8.2-bcmath php8.2-redis 
sudo apt install php8.2-fpm -y
sudo apt install zip unzip curl -y

alert_success "PHP installation has been completed successfully."
sleep 1
