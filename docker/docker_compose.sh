#!/bin/bash
apt-get install py-pip python-dev libffi-dev openssl-dev gcc libc-dev make

#add docker repository to apt-resources
curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Apply executable permission to binary
sudo chmod +x /usr/local/bin/docker-compose

#check docker compose version
docker-compose --version
