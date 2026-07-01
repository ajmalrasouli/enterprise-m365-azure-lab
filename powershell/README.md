## Project Overview

This repository demonstrates the design, deployment, automation, and management of enterprise cloud infrastructure using Infrastructure as Code (IaC) and scripting.

The project focuses on building production-style skills across Microsoft Azure, Terraform, GitHub Actions, and PowerShell automation.

### Technologies

- Microsoft Azure
- Terraform
- GitHub Actions
- PowerShell
- Azure CLI
- Git
- GitHub

## Features

### Infrastructure as Code

- Azure Resource Group
- Virtual Network
- Subnet
- Network Security Group
- Public IP Address
- Linux Virtual Machine
- Azure Storage Account
- Remote Terraform State

### Terraform

- Modular architecture
- Remote backend
- State management
- Reusable modules
- Outputs and variables
- Enterprise repository structure

### CI/CD

- GitHub Actions
- OIDC authentication
- Terraform validation
- Terraform formatting checks
- Terraform plan generation
- Plan artifact upload

### PowerShell Automation

- System Information Reporting
- Logging
- CSV reporting
- Error handling
- Enterprise script structure

## Repository Structure

```text
enterprise-m365-azure-lab/

├── .github/
│   └── workflows/
│       └── terraform.yml
│
├── docs/
│   ├── architecture.md
│   ├── lessons-learned.md
│   └── azure/
│
├── powershell/
│   ├── scripts/
│   │   └── Get-SystemReport.ps1
│   ├── reports/
│   ├── logs/
│   └── README.md
│
├── screenshots/
│
├── terraform/
│   ├── backend.tf
│   ├── providers.tf
│   ├── versions.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── resource-group.tf
│   ├── networking.tf
│   ├── storage.tf
│   ├── compute.tf
│   ├── terraform.tfvars
│   │
│   └── modules/
│       ├── resource-group/
│       ├── networking/
│       ├── storage/
│       └── compute/
│
├── CHANGELOG.md
├── LICENSE
└── README.md
```


## Project Roadmap

### Phase 1 – Azure Infrastructure
- ✅ Resource Group
- ✅ Virtual Network
- ✅ Subnet
- ✅ Network Security Group
- ✅ Public IP

### Phase 2 – Compute
- ✅ Linux Virtual Machine

### Phase 3 – Terraform Fundamentals
- ✅ Infrastructure as Code
- ✅ Variables
- ✅ Outputs

### Phase 4 – Remote State
- ✅ Azure Storage Backend
- ✅ State Management

### Phase 5 – Terraform Modules
- ✅ Resource Group Module
- ✅ Networking Module
- ✅ Storage Module
- ✅ Compute Module

### Phase 6 – CI/CD
- ✅ GitHub Actions
- ✅ OIDC Authentication
- ✅ Terraform Validation
- ✅ Terraform Plan
- ✅ GitHub Variables & Secrets

### Phase 7 – PowerShell Automation
- ✅ Lesson 1 – System Information Report
- ⏳ File & Folder Automation
- ⏳ Azure Automation
- ⏳ Microsoft 365 Automation
- ⏳ Reporting

## Recent Lessons Learned

- Successfully migrated Terraform resources into reusable modules using `terraform state mv`.
- Removed backend resources from Terraform state without deleting Azure resources using `terraform state rm`.
- Diagnosed a GitHub Actions issue caused by missing Terraform variables.
- Learned to use GitHub Repository Variables for non-sensitive Terraform inputs and GitHub Secrets for sensitive values.
- Implemented GitHub Actions with OIDC authentication for Azure.

