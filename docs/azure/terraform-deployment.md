# Terraform Infrastructure Deployment

## Overview

This document describes the migration of manually deployed Azure infrastructure into Terraform Infrastructure as Code (IaC).

Rather than recreating the environment, all Azure resources were imported into Terraform state, allowing the existing production environment to be managed safely without downtime.

---

# Objectives

- Manage Azure infrastructure using Terraform
- Avoid recreating production resources
- Maintain Infrastructure as Code (IaC)
- Configure a secure remote backend
- Prepare for CI/CD automation

---

# Environment

| Component | Version |
|-----------|---------|
| Terraform | 1.15.x |
| Azure CLI | 2.87.x |
| AzureRM Provider | 4.79 |
| Platform | Windows 11 |
| Azure Region | UK South |

---

# Terraform Project Structure

```text
terraform/
├── backend.tf
├── networking.tf
├── outputs.tf
├── providers.tf
├── resource-group.tf
├── storage.tf
├── variables.tf
├── versions.tf
├── virtual-machine.tf
└── terraform.tfvars
```

---

# Azure Resources Managed by Terraform

Terraform manages the following Azure resources:

| Resource | Status |
|----------|--------|
| Resource Group | ✅ |
| Virtual Network | ✅ |
| Subnet | ✅ |
| Network Security Group | ✅ |
| Public IP | ✅ |
| Network Interface | ✅ |
| Ubuntu Linux Virtual Machine | ✅ |
| Azure Storage Account | ✅ |
| Blob Container | ✅ |

---

# Import Process

Existing Azure resources were imported into Terraform using:

```bash
terraform import
```

Each imported resource was validated using:

```bash
terraform plan
```

The import process continued until Terraform reported:

```text
No changes.
Your infrastructure matches the configuration.
```

---

# Remote Terraform Backend

## Overview

To align the project with enterprise Infrastructure as Code practices, Terraform state was migrated from a local backend to Azure Blob Storage.

Using a remote backend provides:

- Centralized state management
- Secure Azure AD authentication
- Team collaboration support
- State locking
- Foundation for CI/CD

---

# Azure Storage Backend

| Resource | Value |
|----------|------|
| Storage Account | stajmalterraform01 |
| Blob Container | tfstate |
| Backend | AzureRM |
| Authentication | Azure AD |
| Encryption | Microsoft Managed |

---

# Backend Configuration

```hcl
terraform {
  backend "azurerm" {
    resource_group_name  = "rg-enterprise-lab"
    storage_account_name = "stajmalterraform01"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"

    use_azuread_auth = true
  }
}
```

---

# Backend Migration

Terraform state was migrated from the local backend to Azure Blob Storage using:

```bash
terraform init -migrate-state
```

Terraform copied the existing state into Azure Blob Storage without recreating any Azure resources.

After migration, all Terraform commands automatically use the remote backend.

---

# Validation Commands

The following commands were executed during deployment:

```bash
terraform fmt
terraform validate
terraform init
terraform plan
terraform import
terraform state list
```

Final validation:

```text
No changes.
Your infrastructure matches the configuration.
```

---

# Azure RBAC

The Storage Account uses Azure AD authentication.

The following Azure role was assigned:

- Storage Blob Data Contributor

This allows Terraform to securely access Azure Blob Storage without using Storage Account access keys.

---

# Screenshots

| Screenshot | Description |
|------------|-------------|
| terraform-init.png | Terraform initialization |
| terraform-import-rg.png | Importing Resource Group |
| terraform-import-vm.png | Importing Linux Virtual Machine |
| terraform-plan-clean.png | Successful validation |
| terraform-init-migrate-state.png | Backend migration |
| azure-storage-account.png | Storage Account |
| azure-storage-container.png | Blob Container |
| azure-storage-tfstate.png | Terraform state stored in Azure |

---

# Skills Demonstrated

- Microsoft Azure
- Infrastructure as Code (IaC)
- Terraform
- AzureRM Provider
- Azure CLI
- Azure Storage Accounts
- Azure Blob Storage
- Azure AD Authentication
- Azure RBAC
- Remote Terraform Backend
- Terraform State Management

---

# Lessons Learned

This phase demonstrated several enterprise Infrastructure as Code concepts:

- Importing existing Azure resources into Terraform
- Managing Terraform state securely
- Configuring Azure Storage as a remote backend
- Using Azure AD authentication instead of Storage Account keys
- Applying Azure RBAC permissions
- Organizing Terraform into modular configuration files

---

# Next Steps

The next phase of the project includes:

- GitHub Actions CI/CD
- Terraform Modules
- Azure Key Vault
- Azure Monitor
- Log Analytics Workspace
- PowerShell Automation

These enhancements will transform the project into a production-style Azure Infrastructure as Code platform suitable for enterprise deployments.