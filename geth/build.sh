#!/bin/bash

docker build . -t lscr.io/linuxserver/ethereum-geth:latest
docker network create testnet
