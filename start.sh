#!/bin/sh

# Install dependencies.
cd /var/www/html/
/usr/bin/composer install

# Clear logs.
# rm -r /var/log/apache2/*

# Start serving.
# Similar to the original docker-compose COMMAND that we've overridden.
/usr/sbin/apache2ctl -e info -DFOREGROUND