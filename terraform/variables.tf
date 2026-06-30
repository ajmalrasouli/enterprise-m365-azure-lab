variable "location" {
  description = "Azure region"
  type        = string
  default     = "uksouth"
}

variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
  default     = "rg-enterprise-lab"
}

variable "ssh_public_key" {
  description = "SSH public key used to access the Linux VM"
  type        = string
}

variable "tags" {
  description = "Common tags applied to all Azure resources"
  type        = map(string)

  default = {
    Environment = "Lab"
    Project     = "Enterprise-M365-Azure-Lab"
    Owner       = "Ajmal"
  }
}

variable "storage_account_name" {
  description = "Storage Account Name"
  type        = string
}