FROM php:8.2-apache

# Puerto que Railway asigna dinámicamente
ENV PORT=${PORT:-8080}
RUN sed -i "s/80/${PORT}/" /etc/apache2/ports.conf

# Copiar proyecto
WORKDIR /var/www/html
COPY . /var/www/html
RUN chown -R www-data:www-data /var/www/html

# Exponer puerto
EXPOSE ${PORT}

# Iniciar Apache
CMD ["apache2-foreground"]
