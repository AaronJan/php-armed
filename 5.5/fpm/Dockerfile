FROM php:5.5-fpm

MAINTAINER Aaron Jan <https://github.com/AaronJan/php-armed>

# Install modules
RUN apt-get update && apt-get install -y \
        vim git \
        gcc-c++ make \
        apt-utils re2c zlib1g-dev libpng12-dev libfreetype6-dev libjpeg62-turbo-dev libmcrypt-dev libpq-dev \
    && docker-php-ext-install zip exif mcrypt pdo_mysql pdo_pgsql mysqli mbstring \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd \
    && curl -sL https://deb.nodesource.com/setup | bash - \
    && sudo apt-get install -y nodejs npm

COPY docker-entrypoint.sh /entrypoint.sh

RUN ["chmod", "a+x", "/entrypoint.sh"]

ENTRYPOINT ["/entrypoint.sh"]

CMD ["php-fpm"]
