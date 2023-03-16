#!/bin/bash

# Script to rn as root to initializa a new Hetzner Cloud server

# Update repositories and system
apt update && apt upgrade -y # apt-get update && apt-get upgrade -y 

# Enable SSH with private key
echo Press Enter and add the private key ("ssh-rsa...") && read key
nano .ssh/authorized_keys # add "ssh-rsa..."
echo Press Enter and modify "PasswordAuthentication no" && read key
nano /etc/ssh/sshd_config # modify "PasswordAuthentication no"
mv /etc/ssh/sshd_config.d/50-cloud-init.conf /etc/ssh/sshd_config.d/50-cloud-init.conf~
service ssh restart # systemctl restart ssh.service

# Fix locale settings 
localectl set-locale C.UTF-8

# (Optional) Add a normal user with sudo priviledges and SSH access
adduser ubuntu
adduser ubuntu sudo # usermod -aG sudo ubuntu
echo Press Enter and add "ubuntu ALL=(ALL) NOPASSWD:ALL" && read key
visudo -f /etc/sudoers.d/90-cloud-init-users # add "ubuntu ALL=(ALL) NOPASSWD:ALL"
su ubuntu
mkdir .ssh
sudo cp /root/.ssh/authorized_keys .ssh

# Tested on Ubuntu 22.04.2 LTS