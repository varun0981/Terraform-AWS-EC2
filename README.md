
# Terraform AWS DevOps Projects 🚀

A collection of three Terraform projects demonstrating AWS infrastructure provisioning, Infrastructure as Code (IaC), remote state management, and reusable Terraform modules.

## 📌 Project Overview

This repository contains three independent Terraform projects organized into separate directories.

| Project | Description | AWS Services |
|---|---|---|
| 01 - EC2 Nginx | Provision EC2 and deploy Nginx using Terraform | EC2, VPC, Security Groups |
| 02 - Remote Infrastructure | Configure Terraform remote state using S3 and DynamoDB | S3, DynamoDB |
| 03 - Terraform Modules App | Provision AWS infrastructure using reusable Terraform modules | EC2, S3, DynamoDB |

---

# 📂 Repository Structure

```text
Terraform-AWS-EC2/
│
├── 01-terraform-ec2-nginx/
│   ├── ec2.tf
│   ├── providers.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── terraform.tf
│   ├── install_nginx.sh
│   ├── README.md
│   └── .gitignore
│
├── 02-remote-infra/
│   ├── s3.tf
│   ├── dynamodb.tf
│   ├── providers.tf
│   ├── terraform.tf
│   ├── README.md
│   └── .gitignore
│
├── 03-terraform-modules-app/
│   ├── infra-app/
│   │   ├── ec2.tf
│   │   ├── s3.tf
│   │   ├── dynamodb.tf
│   │   └── variable.tf
│   ├── main.tf
│   ├── providers.tf
│   ├── terraform.tf
│   ├── install_nginx.sh
│   ├── README.md
│   └── .gitignore
│
├── .gitignore
└── README.md
```

---

# 🏗️ Project 01: Terraform EC2 Nginx Deployment

📁 [01-terraform-ec2-nginx](./01-terraform-ec2-nginx)

### Objective
Automate the provisioning of an AWS EC2 instance and deploy an Nginx web server using Terraform.

### Features
- Provision AWS EC2 instances using Terraform.
- Configure AWS provider and infrastructure resources.
- Configure security groups for SSH and HTTP access.
- Install Nginx automatically using a shell script.
- Access the deployed web server through its public IP.
- Manage infrastructure using Terraform commands.

### Technologies
Terraform | AWS EC2 | VPC | Security Groups | Nginx | Bash

---

# ☁️ Project 02: Terraform Remote Infrastructure

📁 [02-remote-infra](./02-remote-infra)

### Objective
Implement remote Terraform state management using AWS S3 and DynamoDB.

### Features
- Create an S3 bucket for centralized Terraform state storage.
- Configure DynamoDB for state locking.
- Prevent concurrent Terraform operations using state locking.
- Store infrastructure state remotely.
- Separate backend infrastructure from application infrastructure.
- Improve collaboration and state management.

### Architecture

```text
Developer
   |
   v
Terraform
   |
   v
AWS S3
(Remote State)
   |
   v
DynamoDB
(State Locking)
```

### Technologies
Terraform | AWS S3 | DynamoDB | Infrastructure as Code

---

# 🧩 Project 03: Terraform Modules Application

📁 [03-terraform-modules-app](./03-terraform-modules-app)

### Objective
Build AWS infrastructure using reusable Terraform modules and a modular architecture.

### Features
- Create reusable Terraform modules.
- Separate infrastructure resources into individual files.
- Use module inputs and outputs.
- Provision AWS resources through module calls.
- Improve code reusability and maintainability.
- Organize infrastructure into logical components.

### Architecture

```text
Root Terraform Configuration
           |
           v
      Main Module
           |
           v
      infra-app
           |
    +------+------+
    |      |      |
   EC2    S3   DynamoDB
```

### Technologies
Terraform | AWS EC2 | S3 | DynamoDB | Terraform Modules

---

# 🔀 Git Branching Strategy

This repository follows a Git branching strategy for managing development, staging, and production environments.

| Branch | Purpose |
|---|---|
| `dev` | Development and feature testing |
| `stg` | Staging and pre-production testing |
| `main` | Production-ready code |

### Workflow

```text
Developer
   |
   v
Git Repository
   |
   +------ dev
   |       |
   |   Development
   |   & Testing
   |
   +------ stg
   |       |
   |   Pre-production
   |   Testing
   |
   +------ main
           |
       Production
```

### Git Workflow

1. Developer creates or modifies Terraform code.
2. Changes are committed to Git.
3. Development changes are pushed to `dev`.
4. Tested changes are promoted to `stg`.
5. Approved changes are merged into `main`.
6. Production infrastructure is deployed from `main`.

---

# ⚙️ Terraform Workflow

The standard Terraform workflow used in these projects:

```text
terraform init
       |
       v
terraform validate
       |
       v
terraform plan
       |
       v
terraform apply
       |
       v
Infrastructure Created
       |
       v
terraform destroy
```

### Terraform Commands

```bash
terraform init
terraform validate
terraform plan
terraform apply
terraform output
terraform destroy
```

---

# 🛠️ Prerequisites

- AWS Account
- AWS CLI
- Terraform
- Git
- GitHub
- VS Code

Configure AWS credentials:

```bash
aws configure
```

Verify AWS configuration:

```bash
aws sts get-caller-identity
```

---

# 🔐 Security Best Practices

- Never commit AWS access keys or secret credentials.
- Never commit private SSH keys.
- Never commit Terraform state files.
- Keep sensitive files excluded through `.gitignore`.
- Use IAM roles and least-privilege permissions.
- Use remote state for centralized state management.
- Protect production branches.

---

# 🎯 Learning Outcomes

- Infrastructure as Code using Terraform.
- AWS infrastructure provisioning.
- EC2 and Nginx deployment automation.
- Terraform remote backend configuration.
- S3 state storage and DynamoDB locking.
- Terraform modules and reusable infrastructure.
- Git branching and version control.
- Infrastructure deployment and management.

---

# 👨‍💻 Author

**Varun K**

GitHub: [@varun0981](https://github.com/varun0981)

---

⭐ If you find this repository useful, consider giving it a star!
