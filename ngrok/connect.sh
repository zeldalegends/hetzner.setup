#!/bin/bash

echo "Replace <TOKEN> with the one obtained in: https://dashboard.ngrok.com/..."
read key
docker run -it --rm --name ngrok --network=testnet -e NGROK_AUTHTOKEN=<TOKEN> ngrok/ngrok:latest http http://ethereum-geth:7396
