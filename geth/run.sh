#!/bin/bash

docker build . -t ethereum-geth
docker network create testnet
docker run -d --name=ethereum-geth --network=testnet -e PUID=$(id -u) -e PGID=$(id -g) -e TZ=Europe/Amsterdam -v $(pwd)/config:/config --restart=unless-stopped ethereum-geth
