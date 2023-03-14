#!/bin/bash

echo "Replace <TOKEN> with the one obtained in: https://dashboard.ngrok.com/..."
read key
docker run -it --rm --name=ngrok --network=testnet -v $(pwd)/ngrok.yml:/etc/ngrok.yml -e NGROK_CONFIG=/etc/ngrok.yml -e NGROK_AUTHTOKEN=<TOKEN> ngrok/ngrok:latest start --all
