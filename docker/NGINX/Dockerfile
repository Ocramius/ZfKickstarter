FROM ubuntu:13.10

MAINTAINER Marco Pivetta, ocramius@gmail.com

# Install Nginx

#RUN echo "deb http://archive.ubuntu.com/ubuntu/ raring main universe" >> /etc/apt/sources.list

RUN export DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y nano wget dialog net-tools nginx
RUN rm -v /etc/nginx/nginx.conf
# meh, this path has to be fixed
ADD nginx.conf /etc/nginx/nginx.conf
ADD nginx.sh nginx.sh
ADD default.conf /etc/nginx/sites-available/default

EXPOSE 80

# USER www-data

CMD sh nginx.sh
