#!/bin/bash

vagrant up

cp .vagrant/machines/prod/virtualbox/private_key jenkins_home/prod_private_key
cp .vagrant/machines/stage/virtualbox/private_key jenkins_home/stage_private_key

jenkins_home=`pwd`/jenkins_home
docker run -p 8080:8080 -p 50000:50000 -v $jenkins_home:/var/jenkins_home jenkins

vagrant halt
