@echo off
rem # Template to configure SSH access from the client machine

set serverip=...

rem # Access the server and change the root password
ssh root@%serverip% -o ServerAliveInterval=100

rem # Create a key pair for SSH authentication (RSA)
rem # set filepath=$env:USERPROFILE\.ssh\id_rsa.pub 
rem # ssh-keygen [-f %filepath%]
ssh-keygen

rem # Copy the public key (to the server)
rem # Under WSL: ssh-copy-id [-i %filepath%] root@%serverip%
rem # type %filepath%.pub | ssh root@%serverip% "cat >> .ssh/authorized_keys"
type $env:USERPROFILE\.ssh\id_rsa.pub | ssh root@<serverip> "cat >> .ssh/authorized_keys"

rem # Access the server without password
ssh root@%serverip% -o ServerAliveInterval=100
