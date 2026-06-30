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