#!/bin/bash

# Install Docker
sudo yum update -y
sudo amazon-linux-extras install docker -y

# Start Docker service
sudo service docker start
sudo systemctl enable docker

# Add ec2-user to the docker group
sudo usermod -a -G docker ec2-user

# Check Docker info
sudo docker info