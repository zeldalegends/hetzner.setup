#!/bin/bash

docker build -t ethereum-geth .
docker network create testnet
