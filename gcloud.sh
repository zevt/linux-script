#!/usr/bin/env bash
# Install gcloud:
cd ~
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-257.0.0-linux-x86_64.tar.gz
tar zxvf google-cloud-sdk-257.0.0-linux-x86_64.tar.gz
./google-cloud-sdk/install.sh

# Uninstall Gcloud:
# https://cloud.google.com/sdk/docs/uninstall-cloud-sdk

# Gcloud basic commands
gcloud auth activate-service-account --key-file=/path/to/file.json
gcloud config set project my-project
