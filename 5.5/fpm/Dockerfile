FROM php:5.5.19-fpm

MAINTAINER Aaron Jan <https://github.com/AaronJan/php-armed>

# Install modules
RUN apt-get update && apt-get install -y \
        apt-utils re2c g++ \
        zlib1g zlib1g-dbg zlib1g-dev zlibc libtool \
        libpng12-0 libpng12-dev libpng3 \
        libfreetype6 libfreetype6-dev \
        libjpeg62-turbo libjpeg62-turbo-dbg libjpeg62-turbo-dev \
        libmcrypt-dev libmcrypt4 mcrypt \
        libpq-dev \
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
    && docker-php-ext-install mbstring \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-gd-dir=/usr/include/ \
    && docker-php-ext-install gd

COPY docker-entrypoint.sh /entrypoint.sh

RUN ["chmod", "a+x", "/entrypoint.sh"]

ENTRYPOINT ["/entrypoint.sh"]

CMD ["php-fpm"]
