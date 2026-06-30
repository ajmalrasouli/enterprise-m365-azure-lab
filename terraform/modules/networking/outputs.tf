output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}

output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}

output "subnet_id" {
  value = azurerm_subnet.default.id
}

output "subnet_name" {
  value = azurerm_subnet.default.name
}

output "nsg_name" {
  value = azurerm_network_security_group.nsg.name
}

output "public_ip_id" {
  value = azurerm_public_ip.public_ip.id
}

output "public_ip_name" {
  description = "Public IP resource name"
  value       = azurerm_public_ip.public_ip.name
}

output "nic_id" {
  value = azurerm_network_interface.nic.id
}

output "nic_name" {
  value = azurerm_network_interface.nic.name
}