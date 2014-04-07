#!/bin/sh

# cleaning up state
docker kill NGINX
docker kill HHVM
docker rm HHVM
docker rm NGINX
docker rm APPLICATIONDATA
docker rmi hhvm
docker rmi nginx

# build containers (install dependencies, setup configurations, etc)
docker build -t hhvm HHVM
docker build -t nginx NGINX

# run the containers
docker run -v $(pwd)/../application:/application --name APPLICATIONDATA busybox true
docker run -i -t --volumes-from APPLICATIONDATA hhvm sh -c "cd /application && ./run-composer-installation.sh"
docker run -d --volumes-from APPLICATIONDATA --name HHVM hhvm
docker run -d -t -p 11000:80 --name NGINX --link HHVM:PHP nginx
