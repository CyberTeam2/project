#!/bin/bash

# This script is meant to be run on the ansible server,
# for adding ansible user and add user ansible to sudoers file in all the other servers it manages.

# Add to this list as we add more servers


for IP in $(cat server.txt ) ; do ### in server.txt add your hostname list

ssh $IP useradd -p $(openssl passwd password) ansible
ssh $IP   "echo \"ansible ALL=(ALL) NOPASSWD: ALL\" >> /etc/sudoers"

done

