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