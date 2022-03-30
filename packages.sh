#!/bin/bash

# This script is meant to be run on the ansible server,
# for copying its SSH key to all the other servers it manages.

# Switch to ansible user and run this script

# Add to this list as we add more servers

for IP in $(cat server.txt ) ; do  ### in server.txt add your hostname list
echo "#connecting to $IP"
ssh $IP sudo setenforce 0
ssh $IP sudo systemctl stop firewalld
ssh $IP sudo systemctl disable firewalld
ssh $IP sudo yum install -y wget bind-utils man man-pages mlocate sysstat git tree

done

