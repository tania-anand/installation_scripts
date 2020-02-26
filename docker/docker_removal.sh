#!/bin/bash
echo "Are you sure you want to uninstall Docker(Y/N)"
read uninstall_docker

if [[ ! $uninstall_docker =~ ^[Yy]$ ]]
then 
  exit 1
fi

apt-get purge -y docker-engine docker docker.io docker-ce

apt-get autoremove -y --purge docker-engine docker docker.io docker-ce

echo "Want to remove all docker files(Y/N)"
read uninstall_docker_files

if [[ $uninstall_docker_files =~ ^[Yy]$ ]]
 # to remove docker images
 rm -rf /var/lib/docker /etc/docker # This deletes all images, containers, and volumes
 rm /etc/apparmor.d/docker
 #groupdel docker   # if group created removed group
 rm -rf /var/run/docker.sock  # remover docker socket
then 
  exit 1
fi

exit
