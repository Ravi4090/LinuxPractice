#!/bin/bash

# Update the package lists
sudo yum update -y

# Install Java (OpenJDK 11 in this example)
sudo yum install java -y

echo "*********************** Java Installed ***********************"

# Install Jenkins

 # Step 1 : Adding Jenkins Repo  
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo   
 
echo "************************ Step 1 Completed ************************************************"

 #Step 2 : Importing key file from Jenkins-CI to enable installation from the package
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

echo "************************ Step 2 Completed ************************************************"

 #Step 3 :Upgrading all the packages
sudo yum upgrade

echo "************************ Step 3 Completed ************************************************"

 # Step 4 : Installing Jenkins
sudo yum install jenkins -y

echo "************************ Step 4 Completed ************************************************"

echo "*********************** Jenkins Installed ***********************"

 #Step 5 : Enable the Jenkins service to start at boot
sudo systemctl enable jenkins

echo "************************ Step 5 Completed ************************************************"

echo "*********************** Jenkins Enabled ***********************"

 #Step 6 :Start Jenkins service
sudo systemctl start jenkins

echo "*********************** Jenkins Started ***********************"

 #Step 7 :Checking Jenkins Service Status
sudo systemctl status jenkins



#Printing Jenkins Admin Password
echo "Admin Password : "
sudo cat /var/lib/jenkins/secrets/initialAdminPassword



