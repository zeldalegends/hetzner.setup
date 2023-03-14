#!/bin/bash

# Source: https://docs.docker.com/engine/install/ubuntu/#installation-methods

# Create RSA keys with: ssh-keygen

# Change root password

# Enable SSH with private key
nano .ssh/authorized_keys # add "ssh-rsa...." 
nano /etc/ssh/sshd_config # modify "PasswordAuthentication no"
mv /etc/ssh/sshd_config.d/50-cloud-init.conf /etc/ssh/sshd_config.d/50-cloud-init.conf.bak
# systemctl restart ssh.service
service ssh restart 

# (Optional) Add normal user
adduser ubuntu
usermod -aG sudo ubuntu
su ubuntu
mkdir .ssh
sudo cp /root/.ssh/authorized_keys .ssh

# Update repositories and system
apt update && apt upgrade -y

# Uninstall already installed Docker
apt remove docker docker-engine docker.io containerd runc

# Setup Docker repository
apt install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install Docker Engine
apt update
apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Running Docker as normal user
# groupadd docker
# usermod -aG docker $USER
usermod -aG docker root
usermod -aG docker ubuntu
newgrp docker
service docker restart

# (Default in Ubuntu) Start Docker on boot 
# systemctl enable docker.service
# systemctl enable containerd.service

# Disable start Docker on boot
# systemctl disable docker.service
# systemctl disable containerd.service

# Verify installations
docker info
systemctl status docker.service
echo If Docker daemon is not started, run \"sudo reboot\". 
