variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
}

variable "storage_account_name" {
  description = "Storage Account Name"
  type        = string
}

variable "account_tier" {
  description = "Storage Tier"
  type        = string
  default     = "Standard"
}

variable "replication_type" {
  description = "Replication Type"
  type        = string
  default     = "LRS"
}

variable "tags" {
  description = "Tags applied to the Storage Account"
  type        = map(string)
}