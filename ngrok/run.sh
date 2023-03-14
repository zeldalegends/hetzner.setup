#!/bin/bash

docker run -it --rm --name=ngrok --network=testnet -v $(pwd)/ngrok.yml:/etc/ngrok.yml -e NGROK_CONFIG=/etc/ngrok.yml ngrok/ngrok:latest start --all
