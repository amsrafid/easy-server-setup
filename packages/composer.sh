#!/bin/sh

title "Starting composer installation"
sleep 1

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
sudo php composer-setup.php --install-dir /usr/local/bin --filename composer
php -r "unlink('composer-setup.php');"

alert_success "Composer installation has been completed successfully."
sleep 1
