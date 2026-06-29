# Terraform Deployment

## Overview

The Azure infrastructure for this project is managed using Terraform.

Initially, resources were deployed manually through the Azure Portal. They were later imported into Terraform without recreating infrastructure.

## Project Structure

```text
terraform/
├── versions.tf
├── providers.tf
├── variables.tf
├── resource-group.tf
├── networking.tf
├── virtual-machine.tf
├── outputs.tf
└── terraform.tfvars
```

## Resources Managed

- Resource Group
- Virtual Network
- Default Subnet
- Network Security Group
- Public IP
- Network Interface
- Ubuntu Linux Virtual Machine

## Key Commands

### Initialize

```bash
terraform init
```

### Validate

```bash
terraform validate
```

### Plan

```bash
terraform plan
```

### Import

Example:

```bash
terraform import azurerm_resource_group.rg "/subscriptions/<subscription-id>/resourceGroups/rg-enterprise-lab"
```

## Validation Result

```text
Success! The configuration is valid.

No changes.
Your infrastructure matches the configuration.
```

## Screenshots

Recommended screenshots:

- terraform-init.png
- terraform-validate.png
- terraform-plan-clean.png
- terraform-state-list.png
- terraform-folder-structure.png

## Lessons Learned

- Infrastructure can be adopted into Terraform safely.
- Modular configuration improves maintainability.
- Validation should always precede deployment.
- Import existing resources before making changes.

## Next Steps

- Remote Terraform backend
- Terraform modules
- GitHub Actions
- Azure Monitor
- Key Vault integration
