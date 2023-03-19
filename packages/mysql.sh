#!/bin/sh

title "Starting mysql installation"
sleep 1

sudo apt install mysql-server -y

sudo mysql -u root -e "CREATE USER 'dev'@'localhost' IDENTIFIED BY 'password';"
sudo mysql -u root -e "GRANT ALL PRIVILEGES ON * . * TO 'dev'@'localhost';"

alert_success "Mysql installation has been completed successfully."
sleep 1
