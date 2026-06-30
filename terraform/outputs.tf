output "resource_group_name" {
  value = module.resource_group.name
}

output "virtual_network_name" {
  value = azurerm_virtual_network.vnet.name
}

output "subnet_name" {
  value = azurerm_subnet.default.name
}

output "network_security_group" {
  value = azurerm_network_security_group.nsg.name
}

output "public_ip_name" {
  value = azurerm_public_ip.public_ip.name
}

output "network_interface_name" {
  value = azurerm_network_interface.nic.name
}

output "subscription" {
  value = "AjmalTech Sub"
}