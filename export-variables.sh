#!/usr/bin/env bash

if ! grep -q "LocalStack" /etc/profile
then
  sudo bash -c "cat /scripts/data/variables >> /etc/profile"
fi

source /etc/profile

if [ ! -d ~/.aws ]; then
  echo ".aws directory did not exist, creating one"
  cd ~
  mkdir .aws
else
  echo " .aws already exit, skip creating a new one"
fi
sudo cp /scripts/data/credentials ~/.aws/

if [ ! -d /home/vagrant/.aws ]; then
  echo ".aws directory did not exist, creating one"
  cd ~
  mkdir .aws
else
  echo " .aws already exit, skip creating a new one"
fi
sudo cp /scripts/data/credentials /home/vagrant/.aws/