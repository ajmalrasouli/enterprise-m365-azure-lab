# Solution Architecture

## Overview

This project demonstrates a Microsoft cloud environment managed using Infrastructure as Code.

## High-Level Architecture

```text
GitHub
   │
   ▼
Terraform Configuration
   │
   ▼
Azure Subscription
   │
   ├── Resource Group
   │     ├── Virtual Network
   │     ├── Subnet
   │     ├── Network Security Group
   │     ├── Public IP
   │     ├── Network Interface
   │     └── Ubuntu Linux VM
   │
   ├── Microsoft Entra ID
   └── Microsoft Intune
```

## Infrastructure Components

| Component | Purpose |
|----------|---------|
| Resource Group | Logical container |
| Virtual Network | Private networking |
| Subnet | VM network segment |
| Network Security Group | Network security |
| Public IP | SSH access |
| Network Interface | VM connectivity |
| Ubuntu VM | Linux administration and automation |

## Tools

- Azure Portal
- Azure CLI
- Terraform
- Git
- GitHub
- PowerShell

## Future Architecture

- Azure Storage remote backend
- GitHub Actions
- Azure Monitor
- Log Analytics
- Azure Key Vault
