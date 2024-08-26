FROM ubuntu:20.04

RUN apt update && apt-get update && apt-get install -y nginx php-fpm php-mysql php-cli php-mbstring php-xml && apt-get clean

RUN sed -i "s|;cgi.fix_pathinfo=1|cgi.fix_pathinfo=0|" /etc/php/7.4/fpm/php.ini

# Configurar Nginx para usar PHP-FPM
COPY /files/default /etc/nginx/sites-available/default

# Copiar o código da aplicação PHP para o diretório web
COPY /files/index.html /var/www/html/
COPY /files/healthz.php /var/www/html/

# Definir permissões corretas para o diretório da aplicação
RUN chown -R www-data:www-data /var/www/html

# Expor a porta 80
EXPOSE 80

# Iniciar Nginx e PHP-FPM
CMD ["sh", "-c", "php-fpm7.4 -D && nginx -g 'daemon off;'"]