FROM php:5.5.19-fpm

MAINTAINER Aaron Jan <https://github.com/AaronJan/php-armed>

# Install modules
RUN apt-get update && apt-get install -y \
        apt-utils re2c g++ \
        zlib1g-dev \
        libpng12-dev \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpq-dev \
    && docker-php-ext-install exif \
    && docker-php-ext-install mcrypt \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-install pdo_pgsql \
    && docker-php-ext-install mysqli \
    && docker-php-ext-install mbstring \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-gd-dir=/usr/include/ \
    && docker-php-ext-install gd

COPY docker-entrypoint.sh /entrypoint.sh

RUN ["chmod", "a+x", "/entrypoint.sh"]

ENTRYPOINT ["/entrypoint.sh"]

CMD ["php-fpm"]
