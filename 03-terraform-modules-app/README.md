
# Terraform Modules App 🚀

## Overview

This project demonstrates how to build reusable Terraform modules to provision AWS infrastructure using Infrastructure as Code (IaC).

The project follows a modular approach to create, manage, and deploy AWS resources efficiently.

## Git Branching Strategy

This project follows a Git branching strategy to manage development, staging, and production environments.

![Git Branching Strategy](./git-branching.png)

### Branches

| Branch | Purpose |
|---|---|
| `dev` | Development and feature testing |
| `stg` | Staging and pre-production testing |
| `main` | Production-ready code |

### Workflow

1. Developer writes and modifies Terraform code.
2. Changes are committed to Git.
3. Development changes are pushed to `dev`.
4. Tested changes are promoted to `stg`.
5. Approved changes are merged into `main`.
6. Production infrastructure is deployed from `main`.

## Project Structure

```text
terraform-modules-app/
│
├── infra-app/
│   ├── ec2.tf
│   ├── s3.tf
│   ├── dynamodb.tf
│   ├── variables.tf
│   └── install_nginx.sh
│
├── modules/
│   ├── ec2/
│   ├── s3/
│   └── dynamodb/
│
├── main.tf
├── providers.tf
├── terraform.tf
├── .gitignore
└── README.md
```

## Technologies Used

- Terraform
- AWS EC2
- AWS S3
- AWS DynamoDB
- AWS IAM
- Git
- GitHub

## Terraform Commands

Initialize Terraform:

```bash
terraform init
```

Validate configuration:

```bash
terraform validate
```

Check formatting:

```bash
terraform fmt
```

Preview infrastructure changes:

```bash
terraform plan
```

Deploy infrastructure:

```bash
terraform apply
```

Destroy infrastructure:

```bash
terraform destroy
```

## Benefits

- Reusable Terraform modules
- Infrastructure automation
- Environment separation
- Version control using Git
- Consistent AWS infrastructure deployment
- Easy collaboration and maintenance

---

**Infrastructure as Code | Terraform | AWS | Git | DevOps**
