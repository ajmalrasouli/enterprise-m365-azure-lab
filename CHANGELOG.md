# Changelog

All notable changes to this project are documented in this file.

This project follows the principles of
Keep a Changelog and Semantic Versioning.

---

## [Unreleased]

### Planned

- Azure Key Vault
- Azure Monitor
- Log Analytics Workspace
- Azure Backup
- Microsoft Graph Automation
- Microsoft Entra ID Automation
- Microsoft Intune Automation
- Pester Unit Testing
- PSScriptAnalyzer
- PowerShell Gallery publishing

---

# [1.6.0] - 2026-07-03

## Added

### Enterprise PowerShell Automation

- Created reusable ITAutomation PowerShell module
- Added module manifest (.psd1)
- Added enterprise module architecture
- Added automatic module loading
- Added advanced PowerShell functions
- Added comment-based help
- Added parameter validation
- Added pipeline support
- Added SupportsShouldProcess support
- Added enterprise logging framework
- Added Start-Backup cmdlet
- Added Get-DiskReport cmdlet
- Added Test-PathExists cmdlet
- Added Get-PCName cmdlet
- Added Get-DateTime cmdlet
- Added Get-Greeting cmdlet
- Added Get-Hello cmdlet
- Added Write-Log cmdlet

### Documentation

- Added PowerShell coding standards
- Expanded PowerShell documentation

---

# [1.5.0] - 2026-07-01

## Added

### GitHub Actions

- Implemented GitHub Actions CI workflow
- Added Terraform formatting validation
- Added Terraform validation
- Added Terraform planning
- Configured OpenID Connect (OIDC) authentication
- Enabled passwordless Azure authentication

### Terraform

- Completed Compute module
- Completed Storage module
- Standardised module variables and outputs

### Documentation

- Expanded project documentation
- Added deployment screenshots
- Added GitHub Actions documentation

---

# [1.4.0] - 2026-06-30

## Added

### Terraform Modules

- Refactored Resource Group into reusable module
- Refactored Networking into reusable module
- Refactored Storage into reusable module
- Refactored Compute into reusable module

### Improved

- Simplified root Terraform configuration
- Migrated Terraform state using terraform state mv
- Verified zero infrastructure changes after refactoring

---

# [1.3.0] - 2026-06-29

## Added

### Remote Terraform Backend

- Created Azure Storage Account
- Created Blob Container
- Configured AzureRM backend
- Migrated Terraform state to Azure Storage
- Enabled Azure AD authentication
- Enabled remote state locking

---

# [1.2.0] - 2026-06-28

## Added

### Terraform Infrastructure as Code

- Created Terraform project structure
- Configured AzureRM provider
- Imported existing Azure resources
- Created reusable Terraform configuration
- Added variables and outputs
- Validated imported infrastructure

---

# [1.1.0] - 2026-06-27

## Added

### Azure Infrastructure

- Created Resource Group
- Created Virtual Network
- Created Network Security Group
- Created Public IP
- Created Network Interface
- Deployed Ubuntu Server 24.04 LTS
- Configured SSH key authentication
- Installed Azure CLI
- Installed Terraform
- Configured UFW Firewall
- Installed Fail2Ban
- Enabled persistent swap

---

# [1.0.0] - 2026-06-26

## Initial Release

### Microsoft Cloud

- Microsoft Entra ID
- Conditional Access
- Microsoft Intune
- Device Compliance Policies
- Application Deployment

### Documentation

- Initial repository structure
- Architecture documentation
- Screenshots