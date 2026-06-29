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


variable "ssh_public_key_path" {
  description = "Path to the SSH public key"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}