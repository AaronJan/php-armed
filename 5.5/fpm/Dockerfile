FROM php:5.5.19-fpm

MAINTAINER Aaron Jan <https://github.com/AaronJan/php-armed>

# Install modules
RUN apt-get update && apt-get install -y \
        apt-utils re2c g++ \
        zlib1g zlib1g-dbg zlib1g-dev zlibc \
        libpng12-0 libpng12-dev libpng3 \
        libjpeg9 libjpeg9-dbg libjpeg9-dev \
        libmcrypt-dev libmcrypt4 mcrypt \
        libpq-dev \
    && docker-php-ext-install gd \
    && docker-php-ext-install exif \
    && docker-php-ext-install iconv \
    && docker-php-ext-install mcrypt \
    && docker-php-ext-install hash \
    && docker-php-ext-install fileinfo \
    && docker-php-ext-install pdo \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-install pdo_pgsql \
    && docker-php-ext-install mysqli \
    && docker-php-ext-install session \
    && docker-php-ext-install mbstring

CMD ["php-fpm"]

