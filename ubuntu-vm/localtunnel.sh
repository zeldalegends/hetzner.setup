#!/bin/bash

docker run -it --name localtunnel --network private ubuntu/nodejs npx lt -s hzn1-fah --local-host geth-node -p 7396
