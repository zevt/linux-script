#!/usr/bin/env bash

sudo apt-get update -y
# Install Git
sudo apt-get install git-core -y

# Install Vim, unzip
sudo apt-get update
sudo apt-get install vim -y
sudo apt-get install unzip -y

#Install tree, jq, screen, curl
sudo apt-get install tree -y
sudo apt-get install jq -y
sudo apt install screen -y
sudo apt-get install curl -y
sudo apt-get install net-tools -y

sudo apt -y upgrade
#Install snap
sudo apt update
sudo apt install snapd -y