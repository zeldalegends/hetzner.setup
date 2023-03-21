#!/bin/bash

docker build . -t my/node-web-app:latest

docker run -d \
  -p 49160:8080
  -e "NODE_ENV=production" \
  -u "node" \
# -m "300M" --memory-swap "1G" \
  -w "/usr/src/app" \
  --name "my-nodejs-app" \
my/node-web-app:latest