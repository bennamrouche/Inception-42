#!/bin/bash

# Remove all containers
docker rm -f $(docker ps -aq)

# Remove all images
docker rmi -f $(docker images -aq)

# Remove Docker cache directory
sudo rm -rf /var/lib/docker

# Remove all logs
sudo rm -rf /var/lib/docker/containers/*/*-json.log

