#!/bin/bash

docker run -it --rm --name ngrok --network=testnet -e NGROK_AUTHTOKEN=2Mzg7mT5Xdbb4VCQ3VvtpE4kNrA_6W8eMDEddVRVEqZtrhF9i ngrok/ngrok:latest http ethereum-geth:7396
