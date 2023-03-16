@echo off
rem Template to configure SSH access from the client machine

rem Create a key pair for SSH authentication (RSA)
rem Default <filepath>: $env:USERPROFILE\.ssh\id_rsa.pub 
ssh-keygen [-f <filepath>]

rem Copy the public key (to the server)
rem Under WSL: ssh-copy-id [-i <filepath>] root@<serverip>
type <filepath>.pub | ssh root@<serverip> "cat >> .ssh/authorized_keys"

rem Access the server
ssh root@<serverip> -o ServerAliveInterval=100

rem Change root password at first access