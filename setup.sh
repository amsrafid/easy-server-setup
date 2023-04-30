#!/bin/sh

. ./functions/color.sh
. ./functions/label.sh

sudo apt update

# Install PHP
. ./packages/php.sh

# Install Composer
. ./packages/composer.sh

# Install nginx
. ./packages/nginx.sh

# Install mysql
. ./packages/mysql.sh

# Install phpmyadmin
. ./packages/phpmyadmin.sh

# Install multitple sites
. ./packages/multiple-sites.sh
