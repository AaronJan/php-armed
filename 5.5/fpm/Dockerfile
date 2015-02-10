FROM php:5.5-fpm

MAINTAINER Aaron Jan <https://github.com/AaronJan/php-armed>

# Install modules
RUN apt-get update && apt-get install -y \
        apt-utils re2c zlib1g-dev libpng12-dev libfreetype6-dev libjpeg62-turbo-dev libmcrypt-dev libpq-dev \
    && docker-php-ext-install exif mcrypt pdo_mysql pdo_pgsql mysqli mbstring \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-gd-dir=/usr/include/ \
    && docker-php-ext-install gd

COPY docker-entrypoint.sh /entrypoint.sh

RUN ["chmod", "a+x", "/entrypoint.sh"]

ENTRYPOINT ["/entrypoint.sh"]

CMD ["php-fpm"]
