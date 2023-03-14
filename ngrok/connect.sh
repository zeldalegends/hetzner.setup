#!/bin/bash

echo "Replace <TOKEN> with the one obtained in: https://dashboard.ngrok.com/..."
read key
docker run --rm --name ngrok --net=fiware_default -it -v $(pwd)/ngrok.yml:/etc/ngrok.yml -e NGROK_CONFIG=/etc/ngrok.yml -e NGROK_AUTHTOKEN=<TOKEN> ngrok/ngrok:latest http http://localhost:7396
