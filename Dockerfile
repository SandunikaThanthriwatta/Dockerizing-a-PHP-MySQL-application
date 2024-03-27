# base image
FROM php:8.1-apache

WORKDIR /var/www/html

# install and update packages
RUN apt-get update && apt-get install -y \
    libzip-dev \
    && docker-php-ext-install mysqli pdo pdo_mysql zip exif fileinfo

# copy all files to the currect directory
COPY pms-new/ ./


EXPOSE 80