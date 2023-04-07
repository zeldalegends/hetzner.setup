#!/bin/bash

docker run --rm -it --name alpine-vm -v $(pwd):/root/system alpine sh /root/system/alpine-make.sh
