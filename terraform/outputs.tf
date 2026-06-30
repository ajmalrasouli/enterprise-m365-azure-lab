output "resource_group_name" {
  value = module.resource_group.name
}

output "virtual_network_name" {
  value = module.networking.vnet_name
}

output "subnet_name" {
  value = module.networking.subnet_name
}

output "network_security_group" {
  value = module.networking.nsg_name
}

output "network_interface_name" {
  value = module.networking.nic_name
}

output "public_ip_name" {
  value = module.networking.public_ip_name
}

output "subscription" {
  value = "AjmalTech Sub"
}

output "storage_account_name" {
  value = module.storage.storage_account_name
}

output "storage_account_id" {
  value = module.storage.storage_account_id
}

output "storage_blob_endpoint" {
  value = module.storage.primary_blob_endpoint
}

output "virtual_machine_name" {
  value = module.compute.vm_name
}

output "virtual_machine_id" {
  value = module.compute.vm_id
}

output "vm_managed_identity_principal_id" {
  value = module.compute.principal_id
}