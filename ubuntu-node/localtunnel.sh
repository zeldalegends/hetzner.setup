#!/bin/bash

docker build . -t ubuntu/node

docker run -it --name localtunnel --network private ubuntu/node npx lt -s hzn1-fah --local-host geth-node -p 7396
