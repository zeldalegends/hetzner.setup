#!/bin/bash

docker build . -t linuxserver/geth-node:latest

# docker run -d -p 7396:7396 -p 36330:36330 --name geth-node --network private -e PUID=$(id -u) -e PGID=$(id -g) -e TZ=Europe/Amsterdam -v $(pwd)/config:/config --restart unless-stopped lscr.io/linuxserver/foldingathome:latest
docker run -d --name geth-node --network private -e PUID=$(id -u) -e PGID=$(id -g) -e TZ=Europe/Amsterdam -v $(pwd)/config:/config --restart unless-stopped linuxserver/geth-node:latest
