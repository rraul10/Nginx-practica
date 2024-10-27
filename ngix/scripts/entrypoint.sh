#!/bin/bash

# Habilitar los sitios si no existen los enlaces simbólicos
if [ ! -L /etc/nginx/sites-enabled/raul.conf ]; then
  ln -s /etc/nginx/sites-available/raul.conf /etc/nginx/sites-enabled/
fi

# Habilitar los sitios si no existen los enlaces simbólicos
if [ ! -L /etc/nginx/sites-enabled/fernandez.conf ]; then
  ln -s /etc/nginx/sites-available/fernandez.conf /etc/nginx/sites-enabled/
fi

if [ ! -L /etc/nginx/sites-enabled/seguro.conf ]; then
  ln -s /etc/nginx/sites-available/seguro.conf /etc/nginx/sites-enabled/
fi

# Recargar la configuración de Nginx
nginx -s reload

# Iniciar Nginx en primer plano
nginx -g 'daemon off;'