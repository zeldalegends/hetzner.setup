#!/bin/bash

docker build . -t $DOCKER_ACCOUNT/node-red:latest

# docker run -d -p 1880:1880 --name node-red --network private -e TZ=Europe/Amsterdam -v node-red-data:/data -u $(id -u):$(id -g) --add-host "host.docker.internal:host-gateway" --restart unless-stopped nodered/node-red:latest
docker run -d --name node-red --network private -e TZ=Europe/Amsterdam -v node-red-data:/data -u $(id -u):$(id -g) --add-host "host.docker.internal:host-gateway" --restart unless-stopped $DOCKER_ACCOUNT/node-red:latest
