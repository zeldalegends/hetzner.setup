@echo off
rem Template to configure SSH access from the client machine

rem Access the server and change the root password
ssh root@<serverip> -o ServerAliveInterval=100

rem https://www.ucryptojs.com/it/decrypt.html
rem UCryptoJSU2FsdGVkX1%2FQM6ICJFpHbW%2BRU%2F%2B2aYeRdreY6Gm1pz%2BT%2FZlXZnbyW65x21kFd47wEwDy8yijKwSf4bPgW1Cv4pwI%2Fn0v%2F3BRstRAmxFEO%2B92FdH4sbrwKIr9lC5diT71%2BRQhY2ZCi4DmaqJmOFlFlVeP1LaRs8C8ENtFPS9vEyui8arNhghNNNGndzOGJx2JhhpQenkeNg46NC%2Fo4DorLg%3D%3D%28U2FsdGVkX1%2BfMndsNhDmxklrW6f%2BqWV%2BzOPEknjHn8auheAYMvVp4WoW1G1m3SuP%29

rem Create a key pair for SSH authentication (RSA)
rem Default filepath: $env:USERPROFILE\.ssh\id_rsa.pub 
rem ssh-keygen [-f <filepath>]
ssh-keygen

rem Copy the public key (to the server)
rem Under WSL: ssh-copy-id [-i <filepath>] root@<serverip>
rem type <filepath>.pub | ssh root@<serverip> "cat >> .ssh/authorized_keys"
type $env:USERPROFILE\.ssh\id_rsa.pub | ssh root@<serverip> "cat >> .ssh/authorized_keys"

rem Access the server without password
ssh root@<serverip> -o ServerAliveInterval=100
