#!/bin/bash

docker run -d --name ethereum-geth -e PUID=$(id -u) -e PGID=$(id -g) -e TZ=Europe/Amsterdam -p 7396:7396 -p 36330:36330 -v $(pwd)/config:/config --restart unless-stopped ethereum-geth
