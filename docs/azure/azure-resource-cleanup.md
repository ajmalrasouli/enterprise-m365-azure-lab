# Azure Resource Cleanup

## Overview

After successfully completing the Enterprise M365 Azure Lab, all Azure resources were removed to prevent unnecessary cloud costs.

This document describes the cleanup process and verifies that no billable infrastructure remains.

---

# Objectives

- Prevent unnecessary Azure charges
- Remove all deployed infrastructure
- Verify successful deletion
- Leave the Azure subscription clean for future projects

---

# Resources Removed

| Resource | Status |
|----------|--------|
| Resource Group | Deleted |
| Virtual Machine | Deleted |
| Managed Disk | Deleted |
| Public IP Address | Deleted |
| Network Interface | Deleted |
| Virtual Network | Deleted |
| Network Security Group | Deleted |
| Storage Account | Deleted |
| Terraform Remote State | Deleted |

---

# Azure Cost Before Cleanup

Brief explanation of the remaining charges.

Example:

- Public IPv4 Address
- Managed Disk

These resources continued to incur small charges even after the VM had been deallocated.


## Review Azure Costs

The Azure Cost Management dashboard was reviewed before deleting resources.

![Azure Billing](/screenshots/azure-cost-before-cleanup.png)

*Figure 1 – Azure billing dashboard showing remaining charges.*

---

# Delete Azure Resources

Once the project was completed and fully documented, all Azure resources were scheduled for deletion to prevent ongoing cloud charges.

The entire infrastructure was deployed into a dedicated resource group (`rg-enterprise-lab`), making it possible to remove every resource with a single operation.

## Review Deployed Resources

The Resource Group contained all infrastructure created during the project, including:

- Virtual Machine
- Storage Accounts
- Virtual Network
- Network Security Group
- Public IP Address
- Managed Disk
- Network Interface
- SSH Key
- Terraform Remote State Storage

![Enterprise Lab Resource Group](/screenshots/rg-enterprise-lab.png)

*Figure 2 – Resource Group containing all Azure resources deployed for the Enterprise M365 Azure Lab.*

---

## Delete the Resource Group

The **Delete Resource Group** option was selected from the Azure portal.

Azure displays every resource that will be permanently removed before confirming the deletion.

The resource group name must be entered to confirm the deletion.

![Delete Resource Group](/screenshots/delete-resource-group.png)

*Figure 3 – Azure confirmation dialog showing all resources that will be permanently deleted.*

---

## Verify Resource Cleanup

After the deletion process completed, the Azure Resource Groups page was refreshed.

The `rg-enterprise-lab` resource group no longer appeared, confirming that all infrastructure had been successfully removed.

This ensured that no compute, storage, networking, or other resources continued to incur charges.

![Verify Resources Removed](/screenshots/verify-resources-removed.png)

*Figure 4 – Verification that the Enterprise M365 Azure Lab resource group has been successfully removed from the Azure subscription.*

---s