FROM nanoninja/php-fpm:7.4.4
COPY ./install.sh /var/www/install.sh
RUN /bin/sh /var/www/install.sh
CMD crontab /etc/cron.d/crontab && service cron start && php-fpm