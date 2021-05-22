FROM php:8.0-cli

RUN apt-get update && apt-get install -y \ 
    autoconf \ 
    automake \ 
    libtool \ 
    make \ 
    gcc \
    wget \
    git \ 
    libzip-dev \
    zip

RUN pecl install protobuf && docker-php-ext-enable protobuf
RUN wget https://raw.githubusercontent.com/composer/getcomposer.org/76a7060ccb93902cd7576b67264ad91c8a2700e2/web/installer -O - -q | php -- --quiet
RUN mv composer.phar /usr/bin/composer && chmod +x /usr/bin/composer