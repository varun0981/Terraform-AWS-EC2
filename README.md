
# Terraform AWS EC2 Nginx Deployment

## 📌 Project Overview

This project demonstrates Infrastructure as Code (IaC) using Terraform to provision AWS infrastructure and automatically deploy an Nginx web server on an Amazon EC2 instance.

The infrastructure is created automatically using Terraform, and Nginx is installed using a Bash automation script.

## 🏗️ Architecture

```text
Developer
   |
   v
Terraform CLI
   |
   v
AWS Provider
   |
   +----------------------+
   |                      |
   v                      v
 Default VPC         Security Group
                           |
                    +------+------+
                    |             |
                    v             v
                 SSH :22      HTTP :80
                    |             |
                    +------+------+
                           |
                           v
                      EC2 Instance
                      Ubuntu Server
                           |
                           v
                         Nginx
                           |
                           v
                     Custom Website
```

## 🛠️ Technologies Used

- Terraform
- AWS EC2
- AWS VPC
- AWS Security Groups
- Ubuntu Linux
- Nginx
- Bash Scripting
- Git & GitHub

## ✨ Features

- Automated EC2 provisioning
- Infrastructure as Code using Terraform
- Security group configuration
- SSH access to EC2
- Automated Nginx installation
- Custom HTML webpage deployment
- Terraform variables and outputs
- Infrastructure lifecycle management

## 📁 Project Structure

```text
Terraform-AWS-EC2/
│
├── terraform.tf
├── providers.tf
├── ec2.tf
├── variables.tf
├── outputs.tf
├── install_nginx.sh
├── .gitignore
└── README.md
```

## ⚙️ Prerequisites

- AWS Account
- AWS CLI
- Terraform
- Git
- SSH Client

Configure AWS CLI:

```bash
aws configure
```

Verify AWS credentials:

```bash
aws sts get-caller-identity
```

## 🚀 Deployment Steps

### 1. Clone Repository

```bash
git clone https://github.com/varun0981/Terraform-AWS-EC2.git
cd Terraform-AWS-EC2
```

### 2. Initialize Terraform

```bash
terraform init
```

### 3. Validate Configuration

```bash
terraform validate
```

### 4. Generate Infrastructure Plan

```bash
terraform plan
```

### 5. Deploy Infrastructure

```bash
terraform apply
```

Enter `yes` to confirm.

### 6. Connect to EC2

```bash
ssh -i terra-key-ec2 ubuntu@<EC2-PUBLIC-IP>
```

### 7. Verify Nginx

```bash
sudo systemctl status nginx
```

### 8. Access Website

Open your browser:

```text
http://<EC2-PUBLIC-IP>
```

Expected output:

**Welcome to Nginx on EC2**

## 🧹 Destroy Infrastructure

To remove the AWS infrastructure:

```bash
terraform destroy
```

Enter `yes` to confirm.

## 🔐 Security Best Practices

- Never upload private SSH keys to GitHub.
- Never commit AWS credentials.
- Exclude Terraform state files using `.gitignore`.
- Restrict SSH access to trusted IP addresses.
- Follow IAM least-privilege principles.
- Destroy unused AWS resources to avoid charges.

## 📚 What I Learned

- Infrastructure as Code
- Terraform configuration and resource management
- AWS EC2 provisioning
- Security group configuration
- Linux server administration
- Bash scripting and automation
- Nginx installation and deployment
- Terraform infrastructure lifecycle management

## 👨‍💻 Author

**Varun K**

GitHub: [@varun0981](https://github.com/varun0981)

## ⭐ Project Status

Completed - Successfully provisioned an AWS EC2 instance using Terraform and deployed an Nginx web server with automated configuration.

