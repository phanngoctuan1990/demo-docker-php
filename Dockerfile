FROM ubuntu


MAINTAINER TuanPhan <phanngoctuan1990@gmail.com>

# run update and install nginx, php-fpm and other useful libraries
RUN apt-get update -y && \
    apt-get install -y \
    php-fpm php-mysql

VOLUME [ "/var/www/html" ]
WORKDIR /var/www/html
EXPOSE 9000
CMD ["/usr/sbin/php7-fpm"]

# docker run -p 8080:9000 -d -v $(pwd):/var/www/html ngoctuan90/php php -S 0.0.0.0:9000
