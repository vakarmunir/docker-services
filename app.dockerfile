FROM php:7.2-apache
ADD testapp.com.conf /etc/apache2/sites-available
COPY testapp.com /var/www/testapp.com
#RUN chown -R $USER:$USER /var/www/testapp.com
RUN a2ensite testapp.com.conf
RUN service apache2 start
