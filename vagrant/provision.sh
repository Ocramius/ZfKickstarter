#!/bin/sh

# this should be in /etc/rcinit.d, but provisioning is also fine
sudo docker -d &
cd share/docker
./run.sh