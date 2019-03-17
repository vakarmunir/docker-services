FROM php:7.2-apache
ADD ./config/testapp.com.conf /etc/apache2/sites-available
COPY testapp.com /var/www/testapp.com
RUN a2ensite testapp.com.conf
RUN a2enmod rewrite
RUN service apache2 start
