#!/bin/bash

# Install Docker Community Edition
sudo apt-get remove docker docker-engine docker.io -y
sudo apt-get update -y
sudo apt-get install linux-image-extra-$(uname -r) linux-image-extra-virtual -y
sudo apt-get update -y
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" -y
sudo apt-get update -y
sudo apt-get install docker-ce -y # Specify specific version for production environment

# Run the official Jenkins docker container
sudo docker run -d -p 80:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts
