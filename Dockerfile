FROM php:7.4.22-apache

RUN cp /etc/apache2/mods-available/rewrite.load /etc/apache2/mods-enabled/rewrite.load

RUN docker-php-ext-install calendar pdo_mysql
RUN pecl install xdebug && docker-php-ext-enable xdebug
ADD docker-php-ext-xdebug.ini /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini