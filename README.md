# Enterprise Microsoft 365 & Azure Lab

> A production-style Infrastructure as Code (IaC) portfolio demonstrating Microsoft Azure, Terraform, GitHub Actions, Azure CLI, Microsoft Entra ID, and enterprise cloud administration.

---

![Terraform](https://img.shields.io/badge/Terraform-v1.15+-623CE4?logo=terraform)
![Azure](https://img.shields.io/badge/Microsoft-Azure-0078D4?logo=microsoftazure)
![GitHub Actions](https://img.shields.io/badge/GitHub-Actions-2088FF?logo=githubactions)
![Ubuntu](https://img.shields.io/badge/Ubuntu-24.04-E95420?logo=ubuntu)
![License](https://img.shields.io/badge/License-MIT-green)

---

# Overview

This repository documents my personal enterprise cloud engineering lab.

The project demonstrates how an existing Microsoft Azure environment can be migrated into Infrastructure as Code using Terraform, securely managed with a remote backend, and automatically validated through GitHub Actions using OpenID Connect (OIDC) authentication.

Rather than creating temporary lab resources, the project focuses on real-world operational practices including:

- Infrastructure as Code (Terraform)
- Modular Terraform architecture
- Azure Resource Manager (ARM)
- Microsoft Entra ID authentication
- Azure CLI administration
- GitHub Actions CI/CD
- Remote Terraform State
- Azure Storage backend
- State locking
- Linux administration
- Secure SSH authentication
- Azure networking
- Enterprise documentation

The objective is to build a portfolio that reflects enterprise cloud engineering practices rather than isolated technical demonstrations.

---

# Project Objectives

The project aims to demonstrate practical experience with:

- Microsoft Azure
- Terraform
- Infrastructure as Code (IaC)
- Microsoft Entra ID
- GitHub Actions
- Azure CLI
- Linux Administration
- Enterprise Networking
- Cloud Security
- DevOps Automation
- Continuous Integration
- Infrastructure Documentation

---

# Current Project Status

| Area | Status |
|-------|--------|
| Azure Infrastructure | ✅ Complete |
| Ubuntu Server Deployment | ✅ Complete |
| Azure CLI | ✅ Complete |
| Terraform Installation | ✅ Complete |
| Existing Infrastructure Imported | ✅ Complete |
| Remote Terraform Backend | ✅ Complete |
| Azure Storage Backend | ✅ Complete |
| State Locking | ✅ Complete |
| GitHub Actions CI | ✅ Complete |
| Azure OIDC Authentication | ✅ Complete |
| Terraform Resource Group Module | ✅ Complete |
| Terraform Networking Module | ✅ Complete |
| Shared Terraform Variables | ✅ Complete |
| Storage Module | 🚧 In Progress |
| Compute Module | 🚧 Planned |
| Documentation | 🚧 Ongoing |

---

# Architecture

```text
                        GitHub Repository
                               │
                               │
                               ▼
                     GitHub Actions Workflow
                               │
                               │
                               ▼
                OpenID Connect (OIDC Authentication)
                               │
                               ▼
                    Microsoft Entra ID Application
                               │
                               ▼
                      Azure Subscription
                               │
          ┌────────────────────┴────────────────────┐
          │                                         │
          ▼                                         ▼
 Remote Terraform State                  Azure Infrastructure
 Azure Storage Account                  Resource Group
 Blob Container                         Virtual Network
 State Locking                          Subnet
                                        Network Security Group
                                        Public IP
                                        Network Interface
                                        Ubuntu Linux VM
```

## Azure Virtual Machine

The Terraform deployment provisions a Linux virtual machine inside Azure which serves as the primary workload for this lab.

![Azure Virtual Machine](screenshots/vm-enterprise-lab.png)

---

# Repository Structure

```text
enterprise-m365-azure-lab/

├── .github/
│   └── workflows/
│       └── terraform.yml
│
├── docs/
│   ├── architecture.md
│   └── azure/
│       ├── azure-vm-deployment.md
│       └── terraform-deployment.md
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
│   ├── virtual-machine.tf
│   │
│   └── modules/
│       ├── resource-group/
│       │   ├── main.tf
│       │   ├── variables.tf
│       │   └── outputs.tf
│       │
│       └── networking/
│           ├── main.tf
│           ├── variables.tf
│           └── outputs.tf
│
├── CHANGELOG.md
├── LICENSE
└── README.md
```

## Repository Structure

The project follows a modular Terraform layout designed for scalability and reuse.

![Repository Structure](screenshots/terraform-folder-structure.png)

---

# Technologies Used

## Cloud

- Microsoft Azure
- Microsoft Entra ID
- Azure Resource Manager
- Azure Storage
- Azure Virtual Machines
- Azure Virtual Networking

## Infrastructure as Code

- Terraform
- AzureRM Provider
- Remote Backend
- Terraform Modules

## DevOps

- GitHub
- GitHub Actions
- OpenID Connect (OIDC)
- CI/CD

## Operating System

- Ubuntu Server 24.04 LTS

## Administration

- Azure CLI
- SSH
- Git
- PowerShell

---

# Key Features

- Existing Azure infrastructure imported into Terraform
- Modular Infrastructure as Code
- Remote Terraform State
- Azure Blob Storage Backend
- State Locking
- GitHub Actions Automation
- Passwordless Azure Authentication
- Shared Terraform Variables
- Reusable Terraform Modules
- Enterprise Documentation
- Infrastructure Validation
- Infrastructure Version Control

---

# Terraform Modules

The Terraform configuration is being refactored into reusable modules following enterprise best practices.

Current modules:

- Resource Group
- Networking

Planned modules:

- Storage
- Compute
- Monitoring
- Key Vault

Each module contains:

- main.tf
- variables.tf
- outputs.tf

This approach improves:

- Reusability
- Maintainability
- Scalability
- Separation of concerns

---

# Project Timeline

The project has been developed incrementally using enterprise Infrastructure as Code (IaC) practices. Rather than deploying everything from scratch, an existing Azure environment was progressively migrated into Terraform while maintaining full infrastructure availability.

## Phase 1 — Azure Infrastructure

Completed:

- Created Azure Resource Group
- Created Virtual Network
- Created Subnet
- Created Network Security Group
- Created Public IP
- Created Network Interface
- Deployed Ubuntu Server 24.04 LTS
- Configured Trusted Launch
- Enabled Secure Boot
- Enabled vTPM
- Configured SSH authentication

---

## Phase 2 — Linux Administration

Completed:

- Updated Ubuntu
- Installed administration tools
- Installed Azure CLI
- Installed Terraform
- Configured UFW Firewall
- Installed Fail2Ban
- Configured persistent swap
- Verified SSH connectivity

---

## Phase 3 — Infrastructure as Code

Completed:

- Created Terraform project
- Configured AzureRM Provider
- Created Terraform configuration
- Imported existing Azure infrastructure
- Validated imported resources
- Eliminated Terraform drift
- Verified Infrastructure as Code consistency

Imported resources include:

- Resource Group
- Virtual Network
- Subnet
- Network Security Group
- Public IP
- Network Interface
- Ubuntu Linux Virtual Machine

---

## Phase 4 — Remote Terraform Backend

Completed:

- Created Azure Storage Account
- Created Blob Container
- Migrated Terraform state
- Configured Azure Storage backend
- Enabled state locking
- Configured Azure AD authentication

Benefits:

- Centralized Terraform state
- Team collaboration support
- Automatic state locking
- Secure backend
- Enterprise Infrastructure as Code workflow

---

## Phase 5 — GitHub Actions

Completed:

- Created CI workflow
- Automated Terraform validation
- Automated Terraform formatting checks
- Automated Terraform planning
- Configured OpenID Connect (OIDC)
- Removed dependency on stored Azure credentials
- Implemented passwordless Azure authentication

Workflow:

```text
Developer Push
      │
      ▼
GitHub Actions
      │
      ▼
Terraform fmt
      │
      ▼
Terraform init
      │
      ▼
Terraform validate
      │
      ▼
Terraform plan
```

## Continuous Integration

Every push to the **main** branch automatically validates the Terraform configuration using GitHub Actions.

![GitHub Actions](screenshots/GitHub-Actions-successful-run.png)


---

# Infrastructure Migration

One of the primary objectives of this project was to migrate manually created Azure resources into Terraform without recreating infrastructure.

The migration process followed these steps:

1. Create Terraform configuration
2. Match Azure resource properties
3. Import existing Azure resources
4. Validate imported state
5. Confirm zero configuration drift
6. Store Terraform state remotely
7. Automate validation through GitHub Actions

This approach ensured that no production resources were recreated during the migration.

---

# Terraform Module Refactoring

The project is being refactored into reusable Terraform modules following enterprise Infrastructure as Code practices.

Completed modules:

- Resource Group
- Networking

The Resource Group module demonstrates:

- Reusable module design
- Input variables
- Output values
- Shared tags
- State migration using `terraform state mv`

The Networking module demonstrates:

- Virtual Network
- Subnet
- Network Security Group
- Public IP
- Network Interface
- Module outputs
- Root module simplification

All module migrations were completed without changing any Azure infrastructure by using Terraform state migration.

---

# Terraform State Migration

During the module refactoring process, Terraform state was moved rather than recreating Azure resources.

Example:

```bash
terraform state mv \
azurerm_resource_group.rg \
module.resource_group.azurerm_resource_group.this
```

Networking resources were migrated using the same approach.

Benefits:

- No infrastructure downtime
- No resource recreation
- No IP address changes
- No service interruption
- Safe Infrastructure as Code refactoring


### Migrating Local State

The Terraform state was migrated from the local backend to Azure Blob Storage.

![Terraform State Migration](screenshots/terraform-Migrate%20the%20state(1).png)


---

# Remote Terraform Backend

The project stores Terraform state in Azure Storage.

Configuration includes:

- Azure Storage Account
- Blob Container
- Remote State
- State Locking

Advantages:

- Shared state
- Improved collaboration
- Secure storage
- Automatic locking
- Enterprise Terraform workflow

---

# GitHub Actions CI Pipeline

Every push to the `main` branch automatically performs:

- Checkout repository
- Azure authentication using OpenID Connect
- Terraform initialization
- Terraform formatting validation
- Terraform validation
- Terraform planning

This provides continuous validation of the Infrastructure as Code repository before changes are applied.

---

# Security

The project follows security best practices.

Implemented:

- Passwordless Azure authentication
- Microsoft Entra ID Workload Identity Federation
- OpenID Connect
- Remote Terraform state
- Secure SSH authentication
- Trusted Launch
- Secure Boot
- vTPM
- UFW Firewall
- Fail2Ban
- GitHub Secrets
- Terraform state locking

Sensitive information is never committed to source control.

Ignored files include:

```text
terraform.tfvars
*.tfstate
*.tfstate.*
.azure/
*.pem
*.ppk
azure-generated-key.pub
```

---

# Lessons Learned

This project provided practical experience with:

- Infrastructure as Code migration
- Azure Resource Manager
- Terraform imports
- Terraform state management
- Remote backends
- Azure Storage
- Microsoft Entra ID
- GitHub Actions
- OpenID Connect authentication
- Terraform modules
- Enterprise Infrastructure as Code design
- Cloud networking
- Linux administration

# Terraform Project Structure

The Terraform configuration has been organised following enterprise Infrastructure as Code practices.

```text
terraform/

├── backend.tf
├── providers.tf
├── versions.tf
├── variables.tf
├── outputs.tf
├── resource-group.tf
├── networking.tf
├── storage.tf
├── virtual-machine.tf
├── terraform.tfvars
│
└── modules/
    ├── resource-group/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    │
    └── networking/
        ├── main.tf
        ├── variables.tf
        └── outputs.tf
```

The modular design improves:

- Code reuse
- Maintainability
- Scalability
- Separation of concerns
- Easier collaboration
- Enterprise readiness

Future modules will include:

- Storage
- Compute
- Monitoring
- Key Vault

---

# Azure Resources

The current environment is composed of the following Azure resources.

## Resource Group

- Azure Resource Group
- Central location for all lab resources

## Networking

- Virtual Network
- Subnet
- Network Security Group
- Static Public IP
- Network Interface

## Compute

- Ubuntu Server 24.04 LTS
- Trusted Launch
- Secure Boot
- vTPM
- SSH Authentication

## Storage

- Azure Storage Account
- Blob Container
- Remote Terraform Backend


## Remote Terraform State

Terraform state is stored securely inside an Azure Storage Account using an Azure Blob container.

![Azure Storage Account](screenshots/terraform-storage-created-on-Azure.png)


---

# Infrastructure Validation

Every infrastructure change follows the same validation process.

```bash
terraform fmt
terraform validate
terraform plan
```

The objective is always:

```text
No changes.
Your infrastructure matches the configuration.
```

This ensures Terraform configuration accurately represents the deployed Azure infrastructure.

### Terraform Initialization

Terraform initializes the AzureRM provider, downloads required plugins and configures the remote backend.

![Terraform Init](screenshots/terraform-init.png)


### Terraform Validation

Terraform formatting and validation ensure configuration quality before deployment.

![Terraform Validation](screenshots/terraform-fmt-validate.png)


### Terraform Planning

Terraform compares the desired configuration against the current Azure infrastructure before making changes.

![Terraform Plan](screenshots/terraform-plan.png)


### Deploy Storage Resources

Terraform creates the Azure Storage Account and Blob Container.

![Terraform Apply](screenshots/terraform-apply-storage.png)

![Terraform Apply Complete](screenshots/terraform-apply-storage2.png)

## Terraform State

Current Terraform-managed resources can be inspected using the Terraform state commands.

![Terraform State](screenshots/terraform-state-list.png)
---

# GitHub Actions

Infrastructure validation is automated through GitHub Actions.

Workflow stages:

```text
Developer

↓

Git Push

↓

GitHub Repository

↓

GitHub Actions

↓

Azure Login (OIDC)

↓

Terraform Init

↓

Terraform Validate

↓

Terraform Plan

↓

Success
```

Pipeline features include:

- Automatic execution
- Infrastructure validation
- Terraform formatting checks
- Azure authentication
- Remote backend access
- State locking
- Infrastructure planning

No Azure credentials are stored in GitHub.

Authentication uses:

- Microsoft Entra ID
- OpenID Connect
- Federated Credentials

---

# Azure Authentication

Authentication is performed using Microsoft Entra ID Workload Identity Federation.

Advantages include:

- Passwordless authentication
- No Service Principal secrets
- Short-lived access tokens
- Improved security
- Enterprise best practices

Authentication flow:

```text
GitHub Actions

↓

OIDC Token

↓

Microsoft Entra ID

↓

Azure Subscription

↓

Terraform
```
## Azure Cost Management

Azure Cost Management is used to monitor resource usage and estimate project costs.

![Azure Cost Management](screenshots/azure-cost-overview.png)



## GitHub OIDC Authentication

GitHub Actions authenticates to Azure using Microsoft Entra ID and OpenID Connect (OIDC), eliminating the need to store Azure credentials in GitHub secrets.

![Azure Role Assignment](screenshots/add-role-assignment-terraform-cli.png)

---

# Remote State

Terraform state is stored remotely.

Configuration includes:

- Azure Storage Account
- Blob Container
- AzureRM Backend

Features:

- Centralized state
- Team collaboration
- State locking
- Secure storage
- Version control integration


### Verify Remote State

The Terraform state file can be verified directly in the Azure Portal.

![Remote State Verification](screenshots/terraform-Migrate-the-state-on-azure.png)

---

# Repository Documentation

Project documentation is organised as follows.

```text
docs/

├── architecture.md
│
└── azure/
    ├── azure-vm-deployment.md
    └── terraform-deployment.md
```

Documentation includes:

- Azure deployment
- Terraform implementation
- Architecture
- Infrastructure design
- Operational procedures
- Screenshots

---

# Screenshots

The repository includes screenshots demonstrating the deployment and configuration process.

Examples include:

- Azure Resource Group
- Virtual Network
- Ubuntu Server
- Azure CLI
- Terraform Installation
- Terraform Import
- Terraform State Migration
- GitHub Actions
- Azure Storage Backend
- Remote State
- Successful Terraform Plan
- Linux Administration

---

# Skills Demonstrated

This project demonstrates practical experience with:

## Microsoft Azure

- Azure Resource Manager
- Virtual Networks
- Virtual Machines
- Storage Accounts
- Network Security Groups
- Public IP
- Resource Groups

## Terraform

- Infrastructure as Code
- Terraform Modules
- Resource Imports
- State Migration
- Remote Backend
- State Locking
- Variables
- Outputs
- Providers

## DevOps

- Git
- GitHub
- GitHub Actions
- Continuous Integration
- Infrastructure Validation
- Version Control

## Identity & Security

- Microsoft Entra ID
- OpenID Connect
- Federated Credentials
- Azure RBAC
- Secure SSH Authentication
- Trusted Launch
- Secure Boot
- vTPM

## Linux Administration

- Ubuntu Server
- Azure CLI
- SSH
- UFW Firewall
- Fail2Ban
- Package Management
- Swap Configuration

---

# Project Highlights

✔ Existing Azure infrastructure imported into Terraform

✔ Remote Terraform backend configured

✔ Azure Storage state locking enabled

✔ GitHub Actions CI pipeline implemented

✔ Passwordless Azure authentication using OpenID Connect

✔ Terraform state migrated safely

✔ Resource Group refactored into reusable module

✔ Networking refactored into reusable module

✔ Shared Terraform variables implemented

✔ Infrastructure validated with zero configuration drift

✔ Enterprise documentation maintained throughout the project

## Project Management

Development progress is tracked using GitHub Projects.

![GitHub Project Board](screenshots/github-project-milestone.png)

---

# Design Principles

This project follows several engineering principles.

- Infrastructure as Code
- Security by Default
- Modular Design
- Automation First
- Reusable Components
- Documentation Driven
- Incremental Refactoring
- Zero Downtime Infrastructure Migration
- Version Controlled Infrastructure
- Enterprise Maintainability

---

# Future Roadmap

The project will continue to evolve following enterprise Infrastructure as Code and Microsoft Cloud engineering best practices.

## Terraform

- Complete Storage Module
- Complete Compute Module
- Create Monitoring Module
- Create Key Vault Module
- Implement Diagnostic Settings
- Introduce Terraform Workspaces
- Add Environment Separation (Dev / Test / Production)

---

## Azure

Planned Azure services include:

- Azure Key Vault
- Azure Monitor
- Log Analytics Workspace
- Azure Bastion
- Azure Backup
- Azure Update Manager
- Azure Policy
- Azure Automation
- Azure Recovery Services Vault

---

## Microsoft 365

Future Microsoft 365 administration scenarios will include:

- Microsoft Entra ID
- Conditional Access
- Identity Governance
- Privileged Identity Management (PIM)
- Microsoft Intune
- Device Compliance Policies
- Windows Autopilot
- Microsoft Defender for Endpoint
- Microsoft Purview
- Microsoft Sentinel

---

## DevOps

Future automation work includes:

- Multi-stage GitHub Actions pipelines
- Pull Request validation
- Terraform Apply workflow
- Manual approvals
- Automated documentation generation
- Release automation
- Terraform testing
- Security scanning
- Cost analysis

---

# Learning Outcomes

This project has provided hands-on experience with:

- Designing Azure infrastructure
- Deploying Infrastructure as Code
- Importing existing Azure resources into Terraform
- Managing Terraform state
- Migrating state safely using `terraform state mv`
- Configuring remote Terraform backends
- Azure Storage state locking
- Microsoft Entra ID authentication
- GitHub Actions automation
- OpenID Connect (OIDC)
- Terraform module design
- Linux administration
- Azure networking
- Enterprise documentation

---

# Certifications Supporting This Project

The practical work in this repository complements the following Microsoft and cloud certifications.

## Microsoft

- Microsoft Certified: Azure Administrator Associate (AZ-104)
- Microsoft Certified: Azure AI Engineer Associate
- Microsoft Certified: Identity and Access Administrator Associate (SC-300)
- Microsoft Azure Fundamentals (AZ-900)
- Microsoft Azure AI Fundamentals (AI-900)
- Microsoft Azure Data Fundamentals (DP-900)
- Microsoft 365 Fundamentals (MS-900)
- Microsoft Power Platform Fundamentals (PL-900)

---

## AWS

- AWS Certified Solutions Architect – Associate
- AWS Certified Cloud Practitioner

---

## Google

- Professional Chrome Enterprise Administrator

---

## HashiCorp

- Terraform Associate (003)

---

# References

Useful Microsoft and HashiCorp documentation used throughout this project.

## Microsoft Learn

- Azure Virtual Machines
- Azure Virtual Networks
- Azure Storage
- Microsoft Entra ID
- Azure CLI
- Azure RBAC
- Azure Resource Manager

## Terraform

- Terraform Language
- AzureRM Provider
- Terraform State
- Terraform Modules
- Terraform Backend
- Terraform Import
- Terraform State Migration

---

# Contributing

This repository is primarily a personal learning and portfolio project.

Suggestions, improvements and constructive feedback are always welcome.

Potential future contributions include:

- Additional Terraform modules
- Documentation improvements
- Architecture diagrams
- Automation enhancements
- GitHub Actions improvements

---

# Repository Statistics

Current implementation includes:

- Azure Infrastructure
- Remote Terraform Backend
- GitHub Actions CI
- Azure OIDC Authentication
- Enterprise Documentation
- Terraform Modules
- Infrastructure Imports
- Linux Administration
- Azure CLI Automation

Project metrics continue to grow as additional Azure services and Microsoft 365 workloads are implemented.

---

# License

This project is licensed under the MIT License.

See the `LICENSE` file for details.

---

# Author

**Ajmal Rasouli**

Technical Engineer | Cloud Computing | Infrastructure Management

Specialising in:

- Microsoft Azure
- Microsoft 365
- Microsoft Entra ID
- Terraform
- Infrastructure as Code
- Azure Networking
- Linux Administration
- GitHub Actions
- DevOps Automation

---

# Project Summary

This repository demonstrates the practical implementation of enterprise cloud engineering practices using Microsoft Azure, Terraform and GitHub Actions.

Highlights include:

- Azure infrastructure deployed and managed using Infrastructure as Code
- Existing Azure resources imported into Terraform
- Remote Terraform backend using Azure Storage
- State locking for collaborative Infrastructure as Code
- Passwordless Azure authentication using Microsoft Entra ID and OpenID Connect
- Automated validation through GitHub Actions
- Modular Terraform architecture
- Zero-drift infrastructure validation
- Enterprise documentation maintained throughout the project lifecycle

The project continues to evolve with additional Azure services, Microsoft 365 administration scenarios and DevOps automation, providing a realistic representation of modern cloud engineering practices.

---

**Last Updated:** June 2026

**Status:** Active Development 🚀