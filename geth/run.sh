#!/bin/bash

# docker run -d -p 7396:7396 -p 36330:36330 --name ethereum-geth --network testnet -e PUID=$(id -u) -e PGID=$(id -g) -e TZ=Europe/Amsterdam -v $(pwd)/config:/config --restart unless-stopped lscr.io/linuxserver/foldingathome:latest
docker run -d -p 127.0.0.1:7396:7396 -p 127.0.0.1:36330:36330 --name ethereum-geth --network testnet -e PUID=$(id -u) -e PGID=$(id -g) -e TZ=Europe/Amsterdam -v $(pwd)/config:/config --restart unless-stopped lscr.io/linuxserver/ethereum-geth:latest
