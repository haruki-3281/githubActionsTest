FROM php:7.4-apache

COPY . /var/www/html

RUN apt-get update
RUN apt-get install -y memcached libmemcached-dev zlib1g-dev

RUN pecl install memcached

RUN docker-php-ext-enable memcached

RUN docker-php-ext-install pdo_mysql