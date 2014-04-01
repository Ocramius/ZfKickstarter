#!/bin/sh

docker kill NGINX
docker kill HHVM

docker rm HHVM
docker rm NGINX

docker rmi hhvm
docker rmi nginx

docker build -t hhvm HHVM
docker build -t nginx NGINX

docker run -d --name HHVM hhvm
docker run -d -p 11000:80 --name NGINX --link HHVM:PHP nginx