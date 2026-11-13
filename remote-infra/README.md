
# Terraform Remote Infrastructure – AWS

## Overview

This project demonstrates how to implement Terraform Remote State Management using AWS S3 and DynamoDB.

Terraform state is stored remotely in Amazon S3, while DynamoDB provides state locking to prevent concurrent Terraform operations.

## Architecture

```text
Developer
    |
    v
Terraform CLI
    |
    v
AWS Provider
    |
    +-------------------+
    |                   |
    v                   v
   S3 Bucket        DynamoDB Table
   Remote State      State Locking
```

## Tech Stack

- Terraform
- AWS
- Amazon S3
- Amazon DynamoDB
- AWS IAM
- Infrastructure as Code

## Project Structure

```text
remote-infra/
├── .gitignore
├── terraform.tf
├── providers.tf
├── s3.tf
├── dynamodb.tf
└── README.md
```

## Features

- Remote Terraform state storage
- S3 backend configuration
- DynamoDB state locking
- AWS infrastructure automation
- Centralized Terraform state management
- Infrastructure as Code implementation

## Prerequisites

- AWS Account
- AWS CLI
- Terraform
- AWS IAM credentials
- S3 bucket
- DynamoDB table

## AWS Configuration

Configure AWS credentials:

```bash
aws configure
```

Verify AWS credentials:

```bash
aws sts get-caller-identity
```

## Terraform Workflow

### Initialize Terraform

```bash
terraform init
```

### Format Terraform Files

```bash
terraform fmt
```

### Validate Configuration

```bash
terraform validate
```

### Preview Infrastructure

```bash
terraform plan
```

### Apply Infrastructure

```bash
terraform apply
```

## Remote State Management

Terraform stores its state file in Amazon S3 instead of the local machine.

DynamoDB provides locking to prevent multiple users from modifying the state simultaneously.

## Benefits

- Centralized state management
- Team collaboration
- State locking
- Infrastructure consistency
- Improved reliability
- Secure state storage

## Author

Varun K

GitHub: https://github.com/varun0981
