🚀 Terraform AWS EC2 Nginx Deployment

📌 Project Overview

This project demonstrates Infrastructure as Code (IaC) using Terraform to automate the provisioning of AWS infrastructure and deploy an Nginx web server on an Amazon EC2 instance.

Instead of manually creating AWS resources through the AWS Management Console, Terraform automates the infrastructure creation, configuration, and management process.

The project provisions an EC2 instance, configures networking and security, creates an SSH key pair, and installs Nginx automatically using a Bash script.

🏗️ Architecture

                 Developer
                     |
                     v
              Terraform CLI
                     |
                     v
              AWS Provider
                     |
        +------------+------------+
        |                         |
        v                         v
   Default VPC              Security Group
                                  |
                         +--------+--------+
                         |                 |
                         v                 v
                      SSH :22          HTTP :80
                         |                 |
                         +--------+--------+
                                  |
                                  v
                             EC2 Instance
                             Ubuntu Server
                                  |
                                  v
                              Nginx
                                  |
                                  v
                        Custom Web Page
                    Welcome to Nginx on EC2

🛠️ Technologies Used

Terraform

Amazon Web Services (AWS)

Amazon EC2

AWS Security Groups

Ubuntu Linux

Nginx

Bash Scripting

Git & GitHub

✨ Features

Automated EC2 instance provisioning using Terraform

Infrastructure as Code implementation

AWS security group configuration

SSH access to EC2 instance

Automated Nginx installation using Bash

Custom HTML webpage deployment

Configurable instance type, AMI, and storage size

Terraform variables and outputs

Infrastructure lifecycle management using Terraform

📁 Project Structure

TERRAFORM-FOR-DEVOPS-LIVE/
│
├── terraform.tf
├── providers.tf
├── ec2.tf
├── variables.tf
├── outputs.tf
├── install_nginx.sh
├── .gitignore
└── README.md

⚙️ Prerequisites

Before starting, ensure you have:

AWS Account

AWS CLI installed and configured

Terraform installed

SSH client

Git installed

Configure AWS credentials:

aws configure

Verify AWS authentication:

aws sts get-caller-identity

🚀 Deployment Steps

1. Clone Repository

git clone https://github.com/varun0981/Terraform-AWS-EC2.git
cd Terraform-AWS-EC2

2. Initialize Terraform

terraform init

3. Validate Configuration

terraform validate

4. Review Infrastructure Plan

terraform plan

5. Deploy Infrastructure

terraform apply

Enter yes when prompted.

Terraform will automatically create the required AWS resources.

6. Connect to EC2

ssh -i terra-key-ec2 ubuntu@<EC2-PUBLIC-IP>

7. Verify Nginx

sudo systemctl status nginx

8. Access Website

Open your browser:

http://<EC2-PUBLIC-IP>

Expected output:

Welcome to Nginx on EC2

🧹 Destroy Infrastructure

To remove the AWS resources created by Terraform:

terraform destroy

Enter yes when prompted.

This helps prevent unnecessary AWS charges.

🔐 Security Best Practices

Never upload private SSH keys to GitHub.

Never commit AWS access keys or secrets.

Use .gitignore to exclude sensitive files.

Avoid allowing SSH access from 0.0.0.0/0 in production.

Restrict HTTP access when required.

Use IAM roles and least-privilege permissions.

Always destroy unused AWS resources.

📚 What I Learned

Infrastructure as Code using Terraform

AWS EC2 provisioning

Terraform providers, resources, and variables

AWS networking and security groups

SSH-based Linux server administration

Bash scripting for automation

Nginx installation and configuration

Terraform lifecycle management

Deploying a web server on AWS

👨‍💻 Author

Varun K

GitHub: @varun0981

⭐ Acknowledgment

This project was developed as part of my hands-on learning journey in AWS, Terraform, Linux Administration, and DevOps.

