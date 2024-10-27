#!/bin/bash

if [ ! -L /etc/nginx/sites-enabled/raul.com.conf ]; then
  ln -s /etc/nginx/sites-available/raul.com.conf /etc/nginx/sites-enabled/
fi

if [ ! -L /etc/nginx/sites-enabled/fernandez.com.conf ]; then
  ln -s /etc/nginx/sites-available/fernandez.com.conf /etc/nginx/sites-enabled/
fi

if [ ! -L /etc/nginx/sites-enabled/seguro.net.conf ]; then
  ln -s /etc/nginx/sites-available/seguro.net.conf /etc/nginx/sites-enabled/
fi

nginx -s reload

nginx -g 'daemon off;'