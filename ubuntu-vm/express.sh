#!/bin/bash

docker build . -t ubuntu/node

PORT=49016

tput setaf 11 # yellow
echo Server running at: http://$(curl -s ifconfig.me):$PORT
tput sgr0 # normal text

docker run -it --rm \
  --name express \
  -p $PORT:8080 \
  -v $(pwd)/package.json:/home/node/package.json \
  -v $(pwd)/server.js:/home/node/server.js \
ubuntu/node npm start

# -w "/home/node/" \
