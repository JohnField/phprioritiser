#!/bin/sh

# Install server dependencies.
apt-get update
apt-get install -y git zip unzip curl ssh

# Crude Composer install.
curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/bin/composer

# Install dependencies.
cd /var/www/html/
/usr/bin/composer install

# Start serving.
# Similar to the original docker-compose COMMAND that we've overridden.
/usr/sbin/apache2ctl -e info -DFOREGROUND