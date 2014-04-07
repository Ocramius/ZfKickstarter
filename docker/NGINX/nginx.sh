#!/bin/bash

sed -i "s/%php.host%/$PHP_PORT_9000_TCP_ADDR/g" /etc/nginx/sites-available/default
sed -i "s/%php.port%/$PHP_PORT_9000_TCP_PORT/g" /etc/nginx/sites-available/default
sed -i "s/%php.proto%/$PHP_PORT_9000_TCP_PROTO/g" /etc/nginx/sites-available/default

nginx