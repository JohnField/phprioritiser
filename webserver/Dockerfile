FROM php:7.1-apache
# FROM eboraas/apache-php

# Basic PHP config, as operations complain without one.
ADD php.ini /usr/local/etc/php/php.ini

# Install server dependencies.
RUN apt-get update
RUN apt-get install -y git zip unzip curl ssh nano
RUN a2enmod rewrite
# RUN /bin/bash -l -c "$*"

# Crude Composer install.
RUN curl -sS https://getcomposer.org/installer | php && cp composer.phar /usr/bin/composer