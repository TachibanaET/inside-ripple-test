FROm php:7.2-apache

RUN apt-get update -yqq \
  && apt-get install -yqq --no-install-recommends \
    git \
    zip \
    unzip \
  && rm -rf /var/lib/apt/lists

# PHP拡張を有効化
RUN docker-php-ext-install pdo_mysql mysqli

COPY ./site.conf /etc/apache2/sites-avaliabel/000-default.conf

COPY ./ripple .
COPY ./cake .

WORKDIR ./ripple

RUN a2enmod rewrite \
  && service apache2 restart

EXPOSE 80