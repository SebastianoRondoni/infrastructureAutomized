# Usa l'immagine ufficiale di WordPress come base
FROM wordpress:latest

# Aggiungi i moduli necessari di Apache
RUN a2enmod rewrite expires

# Copia il file di configurazione personalizzato per Apache
COPY config/wordpress.conf /etc/apache2/sites-available/wordpress.conf

# Abilita il sito WordPress
RUN a2ensite wordpress

# Copia il file di configurazione di PHP personalizzato
COPY config/php.ini /usr/local/etc/php/conf.d/custom.ini

COPY static-files/index.html /var/www/html/index.html

# Esponi la porta 80 per il traffico HTTP
EXPOSE 80

# Comando di default per eseguire il container
CMD ["apache2-foreground"]