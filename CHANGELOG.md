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

# Changelog

All notable changes to this project are documented in this file.

The format is based on Keep a Changelog, and this project follows Semantic Versioning where practical.

---

# [Unreleased]

## Planned

- GitHub Actions CI/CD
- Terraform Modules
- Azure Key Vault integration
- Azure Monitor
- Log Analytics Workspace
- PowerShell Automation
- Cost Management
- Azure Policy
- Azure Backup
- Microsoft Defender for Cloud

---

# [1.3.0] - 2026-06-29

## Added

### Terraform Remote Backend

- Created Azure Storage Account for Terraform state
- Created private Azure Blob Storage container
- Configured AzureRM backend
- Migrated Terraform state from local storage to Azure Blob Storage
- Enabled Azure AD authentication for backend access

### Terraform

- Added backend.tf
- Added storage.tf
- Added Azure Storage Account resource
- Added Blob Container resource

### Documentation

- Updated README.md
- Updated terraform-deployment.md
- Added backend architecture
- Added backend migration documentation
- Added remote backend screenshots

### Infrastructure

Terraform now manages:

- Resource Group
- Virtual Network
- Subnet
- Network Security Group
- Public IP
- Network Interface
- Ubuntu Linux Virtual Machine
- Azure Storage Account
- Blob Container

---

# [1.2.0] - 2026-06-29

## Added

### Terraform

- Installed Terraform
- Configured AzureRM Provider
- Created modular Terraform configuration
- Split Terraform configuration into logical files
- Imported existing Azure infrastructure
- Added variables
- Added outputs
- Validated imported resources

### Azure Resources Imported

- Resource Group
- Virtual Network
- Subnet
- Network Security Group
- Public IP
- Network Interface
- Ubuntu Linux Virtual Machine

---

# [1.1.0] - 2026-06-28

## Added

### Azure Infrastructure

- Ubuntu Server 24.04 LTS
- Virtual Network
- Public IP
- Network Security Group
- SSH Key Authentication
- Auto Shutdown

### Linux Administration

- Azure CLI
- Terraform
- Git
- UFW Firewall
- Fail2Ban
- Persistent Swap

---

# [1.0.0] - 2026-06-27

## Initial Release

### Microsoft Entra ID

- Tenant configuration
- Administrative accounts
- Security Groups

### Microsoft Intune

- Device Enrollment
- Configuration Profiles
- Compliance Policies

### Security

- Conditional Access
- Multi-Factor Authentication (MFA)
- Device Security Policies

### Documentation

- Project architecture
- Azure deployment
- Repository structure
- Technical documentation
- Screenshots

---

## Repository Milestones

| Version | Milestone |
|----------|-----------|
| 1.0.0 | Enterprise M365 Azure Lab Created |
| 1.1.0 | Azure Infrastructure & Linux Administration |
| 1.2.0 | Terraform Infrastructure as Code |
| 1.3.0 | Remote Terraform Backend |
| Next | GitHub Actions CI/CD |


## Refactored Infrastructure into Terraform Modules

### Added
- Created reusable Resource Group Terraform module.

### Changed
- Replaced root Resource Group resource with a module.
- Updated dependent resources to reference module outputs.
- Moved Terraform state using `terraform state mv`.
- Verified no infrastructure changes after refactoring.

## Refactored Networking into Terraform Module

### Added
- Created reusable networking module.

### Changed
- Moved Virtual Network into module
- Moved Subnet into module
- Moved Network Security Group into module
- Moved Public IP into module
- Moved Network Interface into module
- Updated outputs
- Migrated Terraform state using `terraform state mv`
- Verified no infrastructure changes


## [Phase 7] - PowerShell Automation

### Added

- Created `Get-SystemReport.ps1` for collecting hardware and operating system information.
- Created `Backup-Folder.ps1` to automate folder backups.
- Added timestamped backup folders.
- Added transcript logging.
- Added progress reporting with `Write-Progress`.
- Added backup verification.
- Added execution time reporting.
- Refactored the backup utility into reusable PowerShell functions.