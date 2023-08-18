#!/bin/bash

exec > >(tee /var/log/user-data.log|logger -t user-data -s 2>/dev/console) 2>&1

# Update hostname for better identification
sudo hostname vul-app-server

# Updating yum repositories
sudo yum update -y

# Installing Docker
sudo amazon-linux-extras install docker -y

# Starting Docker
sudo service docker start
sudo systemctl enable docker
sudo usermod -a -G docker ec2-user
sudo docker info

# Downloading and Running the Vulnerable App Server Demo App
sudo docker container run -itd --rm --name vul-app-1 -p 8080:8080 us.gcr.io/panw-gcp-team-testing/qwiklab/pcc-log4shell/l4s-demo-app:1.0