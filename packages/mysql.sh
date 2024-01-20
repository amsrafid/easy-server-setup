#!/bin/sh

# ====================================================
#                   Action Variables
# ====================================================

MYSQL_HOST=localhost
MYSQL_USER=dev
MYSQL_PASSWORD=password

# ====================================================
#               Sites Regular action
# ====================================================

title "Starting mysql installation"
sleep 1

# Install mysql server

sudo apt install mysql-server -y

# Start mysql service

sudo systemctl start mysql.service

# Create new user with password
# Provide grand all previlages to last created user

sudo mysql -u root -e "CREATE USER '${MYSQL_USER}'@'${MYSQL_HOST}' IDENTIFIED BY '${MYSQL_PASSWORD}';"
sudo mysql -u root -e "GRANT ALL PRIVILEGES ON * . * TO '${MYSQL_USER}'@'${MYSQL_HOST}';"

alert_success "Mysql installation has been completed successfully."
sleep 1
