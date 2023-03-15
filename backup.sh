#!/bin/bash

echo Backup folder: $(pwd)
echo Press Enter to start...
read key
tar czvf $(basename $(pwd))_$(date +%Y%m%d%H%M%S).tar.gz .
mkdir public-tmp
mv $(basename $(pwd))*.tar.gz public-tmp/
docker run -d --rm -p 2010:80 --name apache-tmp -v ./public-tmp:/usr/local/apache2/htdocs/ httpd:alpine
echo  -e "\033[1;33mDownload file at: http://$(ip addr show $(ip route | awk '/default/ { print $5 }') | grep "inet" | head -n 1 | awk '/inet/ {print $2}' | cut -d'/' -f1):2010\033[0m"
echo Press Enter to stop the Apache server, CTRL+C to terminate...
readk key
docker stop apache-tmp
docker rm apache-tmp
echo Press Enter to delete public folder and backup files, CTRL+C to terminate...
readk key
sudo rm -r public-tmp
