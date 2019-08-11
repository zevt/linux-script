#!/usr/bin/env bash

/bin/sh -c /scripts/localstack/append-variables.sh

# Create services:
sudo cp /scripts/localstack/localstack-docker.service /etc/systemd/system/
sudo cp /scripts/localstack/aws-config.service /etc/systemd/system/

cd ~
mkdir .aws
cp /scripts/localstack/credentials ~/.aws/

sudo systemctl daemon-reload

sudo systemctl enable localstack-docker.service
sudo systemctl start localstack-docker

# Install Git, Java, Maven, python, pip etc. Giving LocalStack time to start and stabilize
/bin/sh -c /scripts/install-basics.sh

# Install MongoDB, giving LocalStack time to start and stabilize
/bin/sh -c /scripts/mongodb/mongo-4.0-debian-stretch.sh
sudo systemctl enable mongod
sudo systemctl restart mongod

# Create AWS config, giving MongoDB time to start
# aws-config script has to run after install-basics successfully run
# sleep 10
sudo systemctl enable aws-config
sudo systemctl start aws-config

sleep 15
# Create Username and Password for MongoDB, only success if MongoDB have enough time to start
/bin/sh -c /scripts/mongodb/mongo-config.sh