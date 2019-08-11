##!/usr/bin/env bash
#
#echo "Create system service for AWS Configuration"
#
#cd ~
#mkdir .aws
#cd .aws/
#cat > credentials << EOF
#[default]
#aws_access_key_id=foo
#aws_secret_access_key=bar
#region=eu-central-1
#output_format=json
#EOF
#
#
#cd /etc/systemd/system
#echo "
#[Unit]
#Description=aws-config Service
#After=network.target
#
#[Service]
#Type=simple
## Another Type option: forking
## User=vagrant
##WorkingDirectory=/home/vagrant
#ExecStart=/bin/sh -c /scripts/aws-config.sh
#Restart=on-failure
#RestartSec=10s
## All Restart options: always, on-failure, on-abort, etc
#[Install]
#WantedBy=multi-user.target
#" | sudo  tee aws-config.service
#
#sudo systemctl daemon-reload
#sudo systemctl enable aws-config
#sudo systemctl start aws-config
#
#

