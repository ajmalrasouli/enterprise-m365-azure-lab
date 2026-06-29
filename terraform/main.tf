resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    Environment = "Lab"
    Project     = "Enterprise-M365-Azure-Lab"
    Owner       = "Ajmal"
  }
}

resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-enterprise-lab"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.0.0/16"]

  tags = {
    Environment = "Lab"
    Project     = "Enterprise-M365-Azure-Lab"
    Owner       = "Ajmal"
  }
}

resource "azurerm_subnet" "default" {
  name                 = "default"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name

  address_prefixes = [
    "10.0.0.0/24"
  ]
}


resource "azurerm_network_security_group" "nsg" {
  name                = "nsg-enterprise-lab"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name

  tags = {
    Environment = "Lab"
    Project     = "Enterprise-M365-Azure-Lab"
    Owner       = "Ajmal"
  }
}


resource "azurerm_public_ip" "public_ip" {
  name                = "vm-enterprise-lab-ip"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name

  allocation_method = "Static"
  sku               = "Standard"

  zones = ["1"]

  tags = {
    Environment = "Lab"
    Project     = "Enterprise-M365-Azure-Lab"
    Owner       = "Ajmal"
  }
}