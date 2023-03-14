#!/bin/bash

KERNEL=cat /etc/issue
echo=${KERNEL::-6}

echo -e "\033[1;32m SYSTEM \033[0m"
uname -nrpv

echo -e "\033[1;33m PORTS \033[0m"
lsof -i -P -n | grep LISTEN	 # ss -tunlp

echo -e "\033[1;34m CPU \033[0m"
cat /proc/cpuinfo|grep name

echo -e "\033[1;35m RAM \033[0m"
free -m

echo -e "\033[1;36m DISKS \033[0m"
df -h

read key
clear

echo "Useful commands"
docker ps -a --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}\t{{.ID}}\t{{.Image}}\t{{.Size}}" | sort
echo docker rm -f $(docker ps -aq) # Remove all Docker containers
echo
echo "CTRL+Z: Put the running process in background"
echo "jobs: List the processes running in background"
echo "fg \"%<n>\": Recall the <n>th process in background to foreground"
echo
echo "sudo nc -l <port>	Open a local socket on a specific port"
echo "telnet <host> <post>	Connect to a remote socket on a specific port"
echo
echo Users
sudo cat /etc/passwd
echo Processes
ps acrux

alias tree="ls -aR | grep ':$' | perl -pe 's/:$//;s/[^-][^\/]*\//    /g;s/^    (\S)/└── \1/;s/(^    |    (?= ))/│   /g;s/    (\S)/└── \1/'"

echo -e "\033[1;31m Press Enter to see the real-time monitor... \033[0m"
read key
htop
