FROM php:5.6-apache

MAINTAINER Chu <root@sh3ll.me>

RUN docker-php-ext-install mysql && docker-php-ext-install mysqli && docker-php-ext-install pdo_mysql \
	&& apt-get clean && apt-get autoclean && apt-get -y --purge autoremove \
	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
