#!/bin/bash

# Update the package lists
sudo yum update -y

# Install Java (OpenJDK 11 in this example)
sudo amazon-linux-extras install java-openjdk11 -y

# Install Git
sudo yum install -y git

# Install Jenkins
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins.io/redhat/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
sudo yum install -y jenkins

# Start Jenkins service
sudo service jenkins start

# Enable Jenkins to start on boot
sudo chkconfig jenkins on
