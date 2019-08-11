#!/usr/bin/env bash

cd /home/vagrant
sudo echo "Web Service successfully created" > index.html
cd /etc/systemd/system

sudo echo "
     [Unit]
     Description=Web Test Service
     After=network.target

     [Service]
     Type=simple
     # Another Type option: forking
     User=vagrant
     WorkingDirectory=/home/vagrant
     ExecStart=/bin/sh -c 'sudo nohup busybox httpd -f -p 9000'
     Restart=on-failure
     # Other Restart options: or always, on-abort, etc
     [Install]
     WantedBy=multi-user.target
     " >  webstarter.service

#SERVICE = "webstarter"
#
#cat > ${SERVICE}.service << EOF
#[Unit]
#Description=Web Test Service
#After=network.target
#
#[Service]
#Type=simple
## Another Type option: forking
#User=vagrant
#WorkingDirectory=/home/vagrant
#ExecStart=/bin/sh -c 'sudo nohup busybox httpd -f -p 9000'
#Restart=on-failure
## Other Restart options: or always, on-abort, etc
#[Install]
#WantedBy=multi-user.target
#EOF


sudo systemctl daemon-reload
sudo systemctl enable webstarter
sudo systemctl start webstarter
