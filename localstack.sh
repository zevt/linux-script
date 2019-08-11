##!/usr/bin/env bash
#
#echo "Create system service for LocalStack"
#cd /etc/systemd/system
#
#echo "
#[Unit]
#Description=LocalStack Service
#After=network.target
#
#[Service]
#Type=simple
## Another Type option: forking
## User=vagrant
#Environment=SERVICES=sns,sqs,s3
##WorkingDirectory=/home/vagrant
#ExecStart=/bin/sh -c 'sudo SERVICES=sqs,sns,s3 localstack start'
#Restart=always
## Other Restart options: or on-failure, on-abort, etc
#[Install]
#WantedBy=multi-user.target
#" | sudo  tee localstack.service
#
#
#sudo systemctl daemon-reload
#sudo systemctl enable localstack
#sudo systemctl start localstack
#
#
#cd /home/vagrant/
#mkdir .aws
#cd .aws/
#echo "
#[default]
#aws_access_key_id=foo
#aws_secret_access_key=bar
#region=eu-central-1
#output_format=json
#" > credentials
#
#
