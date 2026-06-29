# Enterprise M365 Azure Lab

> A hands-on Microsoft Azure, Microsoft Entra ID, Microsoft Intune, Linux Administration, Azure CLI, PowerShell and Terraform Infrastructure as Code (IaC) project.

---

## Badges

![Azure](https://img.shields.io/badge/Microsoft-Azure-0078D4?logo=microsoftazure&logoColor=white)
![Terraform](https://img.shields.io/badge/Terraform-v1.15-844FBA?logo=terraform&logoColor=white)
![Ubuntu](https://img.shields.io/badge/Ubuntu-24.04-E95420?logo=ubuntu&logoColor=white)
![PowerShell](https://img.shields.io/badge/PowerShell-7+-5391FE?logo=powershell&logoColor=white)
![Azure CLI](https://img.shields.io/badge/Azure_CLI-2.87-blue)
![GitHub](https://img.shields.io/badge/GitHub-Portfolio-black?logo=github)
![Infrastructure as Code](https://img.shields.io/badge/Infrastructure-IaC-success)
![License](https://img.shields.io/badge/License-MIT-green)

---

# Project Overview

This repository documents my hands-on journey building and managing a modern Microsoft cloud environment using enterprise technologies.

The project combines Microsoft Entra ID, Microsoft Intune, Microsoft Azure, Ubuntu Linux, Azure CLI, PowerShell and Terraform to simulate real-world administration and Infrastructure as Code (IaC) practices.

Unlike a simple lab, this repository demonstrates how manually deployed Azure infrastructure can be successfully migrated into Terraform without recreating production resources.

The project is continuously expanded with additional cloud services, automation, security hardening and DevOps practices.

---

# Objectives

The primary goals of this repository are to demonstrate practical experience with:

- Microsoft Azure
- Microsoft Entra ID
- Microsoft Intune
- Linux Administration
- Infrastructure as Code (Terraform)
- Azure CLI
- PowerShell Automation
- Git & GitHub
- Cloud Security
- Enterprise Documentation

---

# Solution Architecture

```text
                                GitHub Repository
                                       │
                                       ▼
                         Enterprise M365 Azure Lab
                                       │
      ┌────────────────────────────────┼────────────────────────────────┐
      │                                │                                │
      ▼                                ▼                                ▼
Microsoft Entra ID              Microsoft Intune                  Microsoft Azure
      │                                │                                │
      │                                │                                │
Security Groups                 Device Enrollment              Resource Group
Conditional Access              Compliance Policies                  │
Identity Management             Application Deployment               ▼
                                                            Virtual Network
                                                                    │
                                                                    ▼
                                                                Subnet
                                                                    │
                                                                    ▼
                                                          Network Security Group
                                                                    │
                                                                    ▼
                                                             Network Interface
                                                                    │
                                                                    ▼
                                                           Ubuntu Linux VM
                                                                    │
               ┌────────────────────────────┬────────────────────────┴─────────────────────┐
               │                            │                                              │
               ▼                            ▼                                              ▼
         Linux Administration          Azure CLI                               Terraform IaC
               │                            │                                              │
         SSH Hardening               Azure Resource Manager                      Infrastructure
         UFW Firewall                Resource Management                          Import
         Fail2Ban                    Subscription Management                      Validation
         Swap Configuration          Automation                                  State Management
```

---

# Technology Stack

| Category | Technologies |
|----------|--------------|
| Cloud | Microsoft Azure |
| Identity | Microsoft Entra ID |
| Device Management | Microsoft Intune |
| Infrastructure as Code | Terraform |
| Operating System | Ubuntu Server 24.04 LTS |
| Scripting | PowerShell, Bash |
| Cloud CLI | Azure CLI |
| Security | UFW, Fail2Ban |
| Version Control | Git & GitHub |

---

# Current Infrastructure

The Azure environment currently managed by Terraform consists of:

- ✅ Resource Group
- ✅ Virtual Network
- ✅ Subnet
- ✅ Network Security Group
- ✅ Public IP Address
- ✅ Network Interface
- ✅ Ubuntu Server 24.04 Virtual Machine

Terraform validation confirms:

```text
No changes.
Your infrastructure matches the configuration.
```

---

# Project Status

| Area | Status |
|------|--------|
| Microsoft Entra ID | ✅ Complete |
| Security Groups | ✅ Complete |
| Conditional Access | ✅ Complete |
| Microsoft Intune | ✅ Complete |
| Device Enrollment | ✅ Complete |
| Compliance Policies | ✅ Complete |
| Application Deployment | ✅ Complete |
| Azure Infrastructure | ✅ Complete |
| Linux Administration | ✅ Complete |
| Azure CLI | ✅ Complete |
| Terraform Infrastructure | ✅ Complete |
| PowerShell Automation | 🚧 In Progress |
| GitHub Actions | 📋 Planned |
| Azure Monitoring | 📋 Planned |

---

# Table of Contents

- [Project Overview](#project-overview)
- [Objectives](#objectives)
- [Solution Architecture](#solution-architecture)
- [Technology Stack](#technology-stack)
- [Current Infrastructure](#current-infrastructure)
- [Project Status](#project-status)
- [Repository Structure](#repository-structure)
- [Documentation](#documentation)
- [Screenshots](#screenshots)
- [Skills Demonstrated](#skills-demonstrated)
- [Roadmap](#roadmap)
- [Contributing](#contributing)
- [License](#license)

---

> **Repository:** https://github.com/ajmalrasouli/enterprise-m365-azure-lab

---


# Repository Structure

```text
enterprise-m365-azure-lab/
│
├── README.md
├── CHANGELOG.md
├── LICENSE
│
├── docs/
│   ├── architecture.md
│   │
│   ├── azure/
│   │   ├── azure-vm-deployment.md
│   │   └── terraform-deployment.md
│   │
│   ├── entra-id/
│   │   ├── security-groups.md
│   │   └── conditional-access.md
│   │
│   └── intune/
│       ├── intune-device-enrollment.md
│       ├── compliance-policies.md
│       └── application-deployment.md
│
├── terraform/
│   ├── README.md
│   ├── versions.tf
│   ├── providers.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── resource-group.tf
│   ├── networking.tf
│   ├── virtual-machine.tf
│   ├── outputs.tf
│   └── .gitignore
│
├── powershell/
│
├── diagrams/
│
└── screenshots/
```

---

# Documentation

The project documentation is organised by technology to make navigation simple and to reflect enterprise documentation practices.

## Microsoft Azure

| Document | Description |
|----------|-------------|
| azure-vm-deployment.md | Ubuntu Virtual Machine deployment and Linux configuration |
| terraform-deployment.md | Terraform Infrastructure as Code implementation |

---

## Microsoft Entra ID

| Document | Description |
|----------|-------------|
| security-groups.md | Enterprise security group creation and management |
| conditional-access.md | Conditional Access policies implementation |

---

## Microsoft Intune

| Document | Description |
|----------|-------------|
| intune-device-enrollment.md | Windows device enrollment |
| compliance-policies.md | Compliance policy configuration |
| application-deployment.md | Enterprise application deployment |

---

# Screenshots

The repository includes screenshots documenting each implementation stage.

## Azure

- Azure Resource Group
- Azure Virtual Machine
- Virtual Network
- Public IP
- SSH Login
- Ubuntu Server Verification

## Linux Administration

- Ubuntu Version
- Swap Configuration
- UFW Firewall
- Fail2Ban
- SSH Session

## Azure CLI

- Azure Login
- Subscription Information
- Resource Groups
- Virtual Machines

## Terraform

- Terraform Version
- Terraform Init
- Terraform Validate
- Terraform Plan
- Terraform State
- Terraform Project Structure

## Microsoft Intune

- Device Enrollment
- Compliance Policies
- Application Deployment

## Microsoft Entra ID

- Security Groups
- Conditional Access Policies

---

# Skills Demonstrated

## Cloud Administration

- Microsoft Azure
- Azure Resource Manager
- Azure Virtual Machines
- Azure Networking
- Azure Resource Groups

---

## Identity & Access Management

- Microsoft Entra ID
- Security Groups
- Conditional Access
- Role Based Access Control (RBAC)

---

## Endpoint Management

- Microsoft Intune
- Windows Enrollment
- Compliance Policies
- Enterprise Applications

---

## Linux Administration

- Ubuntu Server 24.04
- SSH
- User Administration
- Package Management
- Swap Configuration
- System Hardening
- UFW Firewall
- Fail2Ban

---

## Infrastructure as Code

- Terraform
- AzureRM Provider
- Infrastructure Import
- Terraform State
- Infrastructure Validation
- Resource Management
- Modular Terraform Configuration

---

## Automation

- Azure CLI
- PowerShell
- Bash
- Git
- GitHub

---

## DevOps

- Infrastructure as Code
- Version Control
- Documentation
- Change Management
- Cloud Automation

---

# Key Achievements

✔ Successfully deployed an enterprise Azure environment

✔ Configured Microsoft Entra ID security

✔ Implemented Microsoft Intune device management

✔ Built a hardened Ubuntu Server

✔ Configured Azure CLI administration

✔ Installed and configured Terraform

✔ Imported existing Azure resources into Terraform

✔ Achieved a clean Terraform execution plan

✔ Refactored Terraform into modular configuration

✔ Documented every implementation step

---

# Current Terraform Status

Terraform currently manages the following Azure resources:

| Resource | Status |
|----------|--------|
| Resource Group | ✅ Managed |
| Virtual Network | ✅ Managed |
| Subnet | ✅ Managed |
| Network Security Group | ✅ Managed |
| Public IP | ✅ Managed |
| Network Interface | ✅ Managed |
| Ubuntu Linux Virtual Machine | ✅ Managed |

Current validation:

```bash
terraform validate
```

Result

```text
Success! The configuration is valid.
```

Current plan

```bash
terraform plan
```

Result

```text
No changes.
Your infrastructure matches the configuration.
```

---

# Project Roadmap

## Phase 1 — Foundation

- ✅ Repository created
- ✅ Documentation created
- ✅ Project architecture

---

## Phase 2 — Microsoft Entra ID

- ✅ Security Groups
- ✅ Conditional Access

---

## Phase 3 — Microsoft Intune

- ✅ Device Enrollment
- ✅ Compliance Policies
- ✅ Application Deployment

---

## Phase 4 — Azure

- ✅ Resource Group
- ✅ Networking
- ✅ Ubuntu Linux Virtual Machine
- ✅ Azure CLI

---

## Phase 5 — Infrastructure as Code

- ✅ Terraform Installation
- ✅ Terraform Project
- ✅ Resource Import
- ✅ Infrastructure Validation
- ✅ Clean Terraform Plan

---

## Phase 6 — Next

- Azure Storage Backend
- Remote Terraform State
- Terraform Modules
- GitHub Actions
- Azure Monitor
- Log Analytics
- PowerShell Automation
- CI/CD Pipeline

---

# Why This Project?

This repository was created to demonstrate practical enterprise cloud administration skills rather than theoretical knowledge.

Every task has been performed manually, validated, documented and committed to GitHub using production-style workflows.

The project showcases the integration of Microsoft cloud technologies, Linux administration and Infrastructure as Code into a single portfolio demonstrating real-world cloud engineering practices.


---

# Documentation Links

Detailed implementation guides are available throughout the repository.

## Azure

| Documentation | Description |
|--------------|-------------|
| docs/azure/azure-vm-deployment.md | Azure Virtual Machine deployment and Linux configuration |
| docs/azure/terraform-deployment.md | Complete Terraform Infrastructure as Code implementation |

---

## Microsoft Entra ID

| Documentation | Description |
|--------------|-------------|
| docs/entra-id/security-groups.md | Microsoft Entra ID Security Groups |
| docs/entra-id/conditional-access.md | Conditional Access Policies |

---

## Microsoft Intune

| Documentation | Description |
|--------------|-------------|
| docs/intune/intune-device-enrollment.md | Windows Device Enrollment |
| docs/intune/compliance-policies.md | Device Compliance Policies |
| docs/intune/application-deployment.md | Enterprise Application Deployment |

---

# Project Highlights

## Azure Infrastructure

- Enterprise Resource Group
- Virtual Network
- Subnet
- Network Security Group
- Public IP Address
- Ubuntu Server Virtual Machine
- SSH Key Authentication
- Managed Identity
- Boot Diagnostics

---

## Linux Administration

- Ubuntu Server 24.04 LTS
- SSH Administration
- Azure CLI
- Terraform
- UFW Firewall
- Fail2Ban
- Persistent Swap
- Package Management

---

## Infrastructure as Code

- Terraform v1.15
- AzureRM Provider
- Existing Resource Import
- Infrastructure Validation
- State Management
- Modular Configuration
- Production Folder Structure

---

## Microsoft Cloud

- Microsoft Entra ID
- Microsoft Intune
- Azure Portal
- Azure CLI

---

# Project Statistics

| Category | Total |
|----------|------:|
| Azure Resources Managed | 7 |
| Terraform Resources | 7 |
| Linux Server | 1 |
| Azure Subscription | 1 |
| Documentation Files | 10+ |
| Screenshots | 15+ |
| Technologies Used | 12+ |

---

# Screenshots

The repository contains implementation screenshots covering:

## Azure

- Azure Portal
- Resource Group
- Virtual Machine
- Virtual Network
- Network Security Group
- Public IP

## Linux

- SSH Login
- Ubuntu Version
- Swap Configuration
- UFW Firewall
- Fail2Ban

## Azure CLI

- Azure Login
- Subscription
- Resource Groups
- Virtual Machines

## Terraform

- Terraform Installation
- Terraform Validate
- Terraform Plan
- Terraform State
- Terraform Project Structure

## Microsoft Intune

- Device Enrollment
- Compliance Policies
- Application Deployment

## Microsoft Entra ID

- Security Groups
- Conditional Access

---

# Future Enhancements

The following improvements are planned.

## Infrastructure

- Azure Storage Backend
- Remote Terraform State
- Terraform Modules
- Terraform Workspaces

---

## Automation

- PowerShell Automation
- Azure Automation
- Scheduled Tasks
- Azure Runbooks

---

## DevOps

- GitHub Actions
- Continuous Integration
- Terraform Plan Automation
- Automatic Validation
- Automatic Formatting

---

## Monitoring

- Azure Monitor
- Log Analytics
- Alerts
- Dashboards
- Diagnostic Settings

---

## Security

- Microsoft Defender for Cloud
- Azure Key Vault
- Azure Policy
- RBAC Improvements

---

# Lessons Learned

Throughout this project I gained practical experience with:

- Enterprise Azure administration
- Infrastructure as Code
- Linux server administration
- Microsoft Intune
- Microsoft Entra ID
- Azure CLI
- Terraform resource import
- Production documentation
- Git version control
- Cloud architecture

---

# Contributing

This repository is primarily maintained as a personal portfolio and learning project.

Suggestions and improvements are always welcome.

If you find an issue or have recommendations, please open an issue or submit a pull request.

---

# License

This repository is licensed under the MIT License.

See the LICENSE file for details.

---

# Author

**Ajmal Rasouli**

Cloud & Infrastructure Engineer

### Technologies

- Microsoft Azure
- Microsoft Entra ID
- Microsoft Intune
- Terraform
- Azure CLI
- PowerShell
- Linux Administration
- Infrastructure as Code

GitHub

https://github.com/ajmalrasouli

---

# Acknowledgements

This project has been inspired by:

- Microsoft Learn
- Microsoft Azure Documentation
- HashiCorp Terraform Documentation
- Ubuntu Server Documentation
- Azure Architecture Center

---

# Repository Status

```text
Project Status

███████████████████████████████░░░░ 90%

Completed
✔ Microsoft Entra ID
✔ Microsoft Intune
✔ Azure Infrastructure
✔ Ubuntu Linux Administration
✔ Azure CLI
✔ Terraform
✔ Documentation

In Progress
• PowerShell Automation

Planned
• GitHub Actions
• Azure Monitor
• Remote Terraform Backend
• Terraform Modules
```

---

## If you found this repository useful, please consider giving it a ⭐ on GitHub.

Thank you for visiting the project.