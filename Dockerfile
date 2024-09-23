# FROM php:8.2-apache

# # Copy your login page files to the Apache document root
# COPY LoginPage/ /var/www/html/

# # Set the ServerName directive globally to suppress a warning
# RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# # Install and enable the mysqli extension for PHP
# RUN docker-php-ext-install mysqli

# # Enable the extension
# RUN docker-php-ext-enable mysqli

# # Restart Apache to make sure everything is loaded
# RUN service apache2 restart 

# # Expose port 80
# EXPOSE 80


FROM php:8.2-apache
COPY main_src/ /var/www/html/
EXPOSE 80

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
RUN docker-php-ext-install mysqli
RUN docker-php-ext-enable mysqli
RUN service apache2 restart 