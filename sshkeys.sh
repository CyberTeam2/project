#!/bin/bash

# This script is meant to be run on the ansible server,
# for copying its SSH key to all the other servers it manages.

# Switch to ansible user and run this script

# Add to this list as we add more servers

for IP in $(cat server.txt ) ; do ### in server.txt add your hostname list

cat ~/.ssh/id_rsa.pub |  ssh ansible@${IP} "mkdir -p ~/.ssh && chmod 700 ~/.ssh && cat >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys"

done

