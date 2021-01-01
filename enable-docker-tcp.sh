#!/bin/bash -x

sudo cp daemon.json /etc/docker/

sudo mkdir -p /etc/systemd/system/docker.service.d
sudo cp override.conf /etc/systemd/system/docker.service.d

sudo systemctl daemon-reload
sudo systemctl stop docker.service
sudo systemctl stop docker.socket
sudo rm -rf /var/run/docker.sock
sudo systemctl start docker.service
