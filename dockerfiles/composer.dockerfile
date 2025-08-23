FROM composer:latest

ARG UID=1000
ARG GID=1000

RUN addgroup -g ${GID} laravel && adduser -G laravel -u ${UID} -g laravel -s /bin/sh -D laravel

USER laravel

WORKDIR /var/www/html

ENTRYPOINT [ "composer", "--ignore-platform-reqs" ]