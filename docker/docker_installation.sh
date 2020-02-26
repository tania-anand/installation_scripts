#!/bin/bash

echo "Starting Docker Installation"

#add the GPG key for official docker repository

curl -I -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#add docker repository to apt-resources
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

#update package database with the docker packages from newly added repo
apt-get update

#make sure you are to install from docker repo instead of default ubuntu repo
apt-cache policy docker-ce

#install docker 
apt-get install -y docker-ce 


#see docker system status
systemctl status docker


echo "Docker Installation Finished"
