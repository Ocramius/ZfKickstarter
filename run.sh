#!/bin/sh

scriptDir=$(pwd)

cd "$scriptDir"/vagrant

vagrant up
vagrant ssh -c "cd share/docker && sh run.sh"
