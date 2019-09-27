FROM 1and1internet/ubuntu-16-apache-php-7.2

# install phpredis function
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    apt-get install -y php7.2-redis

EXPOSE 8080

WORKDIR /var/www/html
