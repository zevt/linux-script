#!/usr/bin/env bash

sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update -y
sudo apt-get install \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg2 \
  software-properties-common -y

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable" -y
sudo apt-get update -y
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

# Pull images:
echo "Pulling Docker image for LocalStack"
sudo docker pull localstack/localstack