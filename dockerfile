FROM php:7.3.28-apache

#-------Установка модулей PostgreSQL-------
RUN apt-get update -y && \
    apt-get install -y apt-utils gnupg2 ca-certificates libpq-dev && \
    docker-php-ext-install pdo pdo_pgsql pgsql

#-------Копирование файлов конфигурации-------
COPY php.ini /usr/local/etc/php/
COPY 000-default.conf /etc/apache2/sites-available/
COPY ports.conf /etc/apache2/
COPY php_page/* /var/www/html/
COPY php_page/images /var/www/html/images

