FROM php:7.4-apache

COPY . /var/www/html

RUN apt-get install && docker-php-ext-install pdo_mysql \
    && apt-get install -y git \
    && apt-get install -y memcached \
    && apt-get install -y libmemcached-dev \
    && apt-get install -y zlib1g-dev \
    && pecl install memcached \
    && docker-php-ext-enable memcached \
    && service apache2 start