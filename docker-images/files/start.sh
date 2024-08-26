#!/bin/sh

# Iniciar o PHP-FPM em background
# php-fpm82

# Iniciar o Nginx em foreground
nginx -g 'daemon off;'

# Iniciar o PHP-FPM em background
php-fpm82