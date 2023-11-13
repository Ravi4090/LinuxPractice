#!/bin/bash

# Update the package lists
sudo yum update -y

# Install Java (OpenJDK 11 in this example)
sudo yum install java -y

# Install Git
sudo yum install -y git

# Install Jenkins

 # Step 1 : Adding Jenkins Repo  
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo

 #Step 2 : Importing key file from Jenkins-CI to enable installation from the package
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

 #Step 3 :Upgrading all the packages
sudo yum upgrade

 # Step 4 : Installing Jenkins
sudo yum install jenkins -y

 #Step 5 : Enable the Jenkins service to start at boot
sudo systemctl enable jenkins

 #Step 6 :Start Jenkins service
sudo systemctl start jenkins

 #Step 7 :Checking Jenkins Service Status
sudo systemctl status jenkins

#Printing Jenkins Admin Password
sudo cat /var/lib/jenkins/secrets/initialAdminPassword



