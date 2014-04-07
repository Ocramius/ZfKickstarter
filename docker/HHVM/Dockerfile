FROM ubuntu:13.10

MAINTAINER Marco Pivetta, ocramius@gmail.com

RUN export DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y curl
RUN curl -sS http://dl.hhvm.com/conf/hhvm.gpg.key | sudo apt-key add -
RUN echo deb http://dl.hhvm.com/ubuntu saucy main | sudo tee /etc/apt/sources.list.d/hhvm.list
RUN sudo apt-get update
RUN sudo apt-get install -y hhvm

#ADD foobar.php foobar.php

EXPOSE 9000
EXPOSE 9001

# USER hhvm

#WORKDIR /application/public
CMD hhvm --mode server -vServer.Type=fastcgi -vServer.Port=9000 -vAdminServer.Port=9001
