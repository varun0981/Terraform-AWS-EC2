# Terraform AWS EC2 Infrastructure

## Overview
This project demonstrates Infrastructure as Code (IaC) using Terraform to provision AWS infrastructure automatically. It creates an EC2 instance, Virtual Private Cloud (VPC), Security Group, and SSH Key Pair.

## Tech Stack
- Terraform
- AWS EC2
- AWS VPC
- AWS Security Groups
- AWS Key Pair
- AWS CLI
- Git & GitHub

## Architecture
Terraform provisions the following AWS resources:
- Default VPC
- EC2 Instance (Ubuntu)
- Security Group for SSH access
- SSH Key Pair for instance authentication

## Project Structure
```text
TERRAFORM-FOR-DEVOPS-LIVE/
├── terraform.tf
├── providers.tf
├── ec2.tf
├── .gitignore
└── README.md
```

## Features
- Automated AWS infrastructure provisioning
- EC2 instance creation using Terraform
- Security Group configuration
- SSH key-based authentication
- Infrastructure lifecycle management
- Automated resource destruction

## Commands

Initialize Terraform:
```bash
terraform init
```

Validate configuration:
```bash
terraform validate
```

Generate execution plan:
```bash
terraform plan
```

Create infrastructure:
```bash
terraform apply
```

Destroy infrastructure:
```bash
terraform destroy
```

## Security
- SSH key-based authentication
- Sensitive private keys excluded from GitHub
- AWS credentials managed through AWS CLI
- Infrastructure managed using Terraform

## Author
Varun
