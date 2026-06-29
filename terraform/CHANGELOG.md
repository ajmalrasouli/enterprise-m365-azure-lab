# Changelog

All notable changes to this project are documented in this file.

The format is inspired by **Keep a Changelog** and follows semantic project milestones.

---

## v2.0.0 - Terraform Infrastructure

### Added
- Terraform project structure
- AzureRM provider configuration
- Modular Terraform configuration
- Resource outputs
- Project documentation

### Imported into Terraform
- Resource Group
- Virtual Network
- Default Subnet
- Network Security Group
- Public IP Address
- Network Interface
- Ubuntu Linux Virtual Machine

### Improved
- Refactored Terraform into multiple `.tf` files
- Improved repository structure
- Added Azure documentation
- Added architecture documentation

### Validated
- `terraform init`
- `terraform validate`
- `terraform plan`

Result:

```text
No changes.
Your infrastructure matches the configuration.
```

---

## v1.5.0 - Azure Infrastructure

- Created Azure Resource Group
- Created Virtual Network
- Created Network Security Group
- Deployed Ubuntu Server 24.04
- Configured SSH key authentication
- Enabled Auto Shutdown
- Installed Azure CLI
- Installed Terraform on Linux VM
- Configured UFW
- Configured Fail2Ban
- Added persistent 1 GB swap

---

## v1.0.0 - Microsoft Cloud

- Microsoft Entra ID Security Groups
- Conditional Access
- Microsoft Intune Device Enrollment
- Compliance Policies
- Application Deployment

---

## Roadmap

Upcoming work:

- Remote Terraform Backend
- Terraform Modules
- GitHub Actions
- Azure Monitor
- PowerShell Automation
- Azure Key Vault
