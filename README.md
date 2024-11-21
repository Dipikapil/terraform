# Jenkins-server---Terraform
To launch a Jenkins server in AWS Using Terraform

# AWS Account requirements
Change security Group id and Key-pair as per your AWS Account.
Set Security group inbound rules as all traffic

# Key Pair Updation

Create a key by using the command ssh-keygen in command prompt.
Upload the public in AWS EC2 > Key Pairs, keep the private key in your local machine
Give name as "jenkins-key", Because we have given the profile name in the code (main.tf line number 4) as this.

# Setting of AWS Credential
Set credentials AWS Credentials of your AWS Account in .aws folder

Example of setting AWS Credential:

[terraform-project-prod]
aws_access_key_id = AU5WQF***********
aws_secret_access_key = InfEXX1f+i7lS2Q***********

Profile name should be [terraform-project-prod], Because we have given the profile name in the code (provider.tf line number 12) as this.


# Connection to the Jenkins Server
Find the public IP address of the Jenkins Server (EC2 Instance in AWS Console).
Enter the public ip:8080 in browser

EX: if IP Address is 10.10.1.2, Then the Jenkins server URL Will be 
10.10.1.2:8080