#!/usr/bin/env bash

sudo apt-get update -y
# Install Git
sudo apt-get install git-core -y

# Install Vim
sudo apt-get update
sudo apt-get install vim -y

#Install tree, jq, screen, curl
sudo apt-get install tree -y
sudo apt-get install jq -y
sudo apt install screen -y
sudo apt-get install curl -y
sudo apt-get install net-tools -y

echo "Install Java SDK, Maven,PIP and Node-js"

# Install java jdk,
sudo apt-get install default-jdk -y
sudo apt-get install default-jre -y
# Install maven
sudo apt install maven -y

# Install pip
sudo apt install python-pip -y

# Install npm on Debian, as root
sudo curl -sL https://deb.nodesource.com/setup_12.x | sudo bash -
sudo apt-get install -y nodejs

# Install Scala
sudo apt-get install scala -y

# Install Oracle Java version 8, 11, 12 on Debian
# https://www.itzgeek.com/how-tos/linux/debian/how-to-install-oracle-java-8-on-debian-9-ubuntu-linux-mint.html
