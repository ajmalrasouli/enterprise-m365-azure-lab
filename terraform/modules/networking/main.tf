#########################################################
# Virtual Network
#########################################################

resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-enterprise-lab"
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = ["10.0.0.0/16"]

  tags = var.tags
}

#########################################################
# Subnet
#########################################################

resource "azurerm_subnet" "default" {
  name                 = "default"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name

  address_prefixes = [
    "10.0.0.0/24"
  ]
}

#########################################################
# Network Security Group
#########################################################

resource "azurerm_network_security_group" "nsg" {
  name                = "nsg-enterprise-lab"
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = var.tags
}

#########################################################
# Public IP
#########################################################

resource "azurerm_public_ip" "public_ip" {
  name                = "vm-enterprise-lab-ip"
  location            = var.location
  resource_group_name = var.resource_group_name

  allocation_method = "Static"
  sku               = "Standard"

  zones = ["1"]

  tags = var.tags
}

#########################################################
# Network Interface
#########################################################

resource "azurerm_network_interface" "nic" {
  name                = "vm-enterprise-lab859_z1"
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "ipconfig1"
    subnet_id                     = azurerm_subnet.default.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.public_ip.id
  }

  tags = var.tags
}