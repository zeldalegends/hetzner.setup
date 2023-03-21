#!/bin/bash

# docker run -it --rm --name ngrok --network private -e NGROK_AUTHTOKEN=2Mzg7mT5Xdbb4VCQ3VvtpE4kNrA_6W8eMDEddVRVEqZtrhF9i ngrok/ngrok:latest http node-red:1880
docker run -it --rm --name ngrok --network private -v $(pwd)/ngrok.yml:/etc/ngrok.yml -e NGROK_CONFIG=/etc/ngrok.yml ngrok/ngrok:latest start --all
