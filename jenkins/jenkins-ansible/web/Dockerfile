FROM remote-host

RUN yum -y install nginx-1.26.3 php-fpm-8.3.17 php-mysqlnd-8.3.17

EXPOSE 80 443

VOLUME /var/www/html /var/log/nginx /var/log/php-fpm /var/lib/php-fpm

COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf

COPY ./bin/start.sh /start.sh

RUN chmod +x /start.sh

CMD /start.sh
