#!/bin/bash

# For Ubuntu 22.042 LTS (Hetzner Cloud)

# Create RSA keys with: ssh-keygen
# Access the server: ssh root@<IP> -o ServerAliveInterval=100
# Change root password and save it

# Update repositories and system
apt update && apt upgrade -y

# Enable SSH with private key
echo Press Enter and add your private key ("ssh-rsa...") && read key
nano .ssh/authorized_keys # add "ssh-rsa..."
echo Press Enter and modify "PasswordAuthentication no" && read key
nano /etc/ssh/sshd_config # modify "PasswordAuthentication no"
mv /etc/ssh/sshd_config.d/50-cloud-init.conf /etc/ssh/sshd_config.d/50-cloud-init.conf.bak
# systemctl restart ssh.service
service ssh restart 

# (Optional) Add normal user with sudo priviledges and SSH access
adduser ubuntu
usermod -aG sudo ubuntu
echo Press Enter and add "ubuntu ALL=(ALL) NOPASSWD:ALL" && read key
nano /etc/sudoers.d/90-cloud-init-users # add "ubuntu ALL=(ALL) NOPASSWD:ALL"
su ubuntu
mkdir .ssh
sudo cp /root/.ssh/authorized_keys .ssh
