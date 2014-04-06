#!/bin/sh

# cleaning up state
docker kill NGINX
docker kill HHVM
docker rm HHVM
docker rm NGINX
docker rmi hhvm
docker rmi nginx

# build containers (install dependencies, setup configurations, etc)
docker build -t hhvm HHVM
docker build -t nginx NGINX

# run the containers
docker run -d --name HHVM hhvm
docker run -d -p 11000:80 --name NGINX --link HHVM:PHP nginx