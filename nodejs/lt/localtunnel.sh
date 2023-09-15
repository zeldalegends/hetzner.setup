#!/bin/bash

# Run ./express.sh first
read -n 1 -p "Is Express server already up (Y/n)? " answer
case "$answer" in
  N|n)  echo && exit;;
  '')   ;;
  *)    echo;;
esac

# docker run --rm -it --name localtunnel --network <a-shared-network> --user root ubuntu/nodejs sh -c "npm i -g localtunnel && npx lt -s test-express -l express -p 8080"
docker run --rm -it --name localtunnel --network container:express --user root ubuntu/nodejs sh -c "npm i -g localtunnel && npx lt -s test-express -p 8080"
