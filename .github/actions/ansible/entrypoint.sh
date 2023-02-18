#!/bin/sh
 mkdir -p ~/.ssh
 echo "$SSH_PRIVATE_KEY" | tr -d '\r' > ~/.ssh/id_rsa
 chmod 600 ~/.ssh/id_rsa
 eval "$(ssh-agent -s)"
 ssh-add ~/.ssh/id_rsa
 ssh-keyscan -H $prod_ip_centos >> ~/.ssh/known_hosts
 export image=chyngyz91/myappgo

