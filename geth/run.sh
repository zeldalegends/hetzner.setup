#!/bin/bash

docker run -d --name ethereum-geth -e PUID=$(id -u) -e PGID=$(id -g) -e TZ=Europe/Amsterdam -v $(pwd)/config:/config --restart unless-stopped ethereum-geth
