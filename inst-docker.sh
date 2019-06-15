#! /bin/bash

DOCKER_VERSION="18.09.0"

mkdir -p /home/docker-inst/ && cd /home/docker-inst/
curl https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKER_VERSION}-ce.tgz -o docker-${DOCKER_VERSION}.tgz
tar xzf docker-${DOCKER_VERSION}.tgz
cp docker/docker /usr/bin/docker && chmod +x /usr/bin/docker && chown root:root /usr/bin/docker
echo "jenkins ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
