#########################################################
# Azure Linux Virtual Machine
#########################################################

resource "azurerm_linux_virtual_machine" "vm" {

  name                = "vm-enterprise-lab"
  resource_group_name = module.resource_group.name
  location            = var.location

  size = "Standard_B1ls"

  admin_username = "azureuser"

  network_interface_ids = [
    azurerm_network_interface.nic.id
  ]

  disable_password_authentication = true

  admin_ssh_key {
    username   = "azureuser"
    public_key = var.ssh_public_key

  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "StandardSSD_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "ubuntu-24_04-lts"
    sku       = "server"
    version   = "latest"
  }

  zone = "1"

  secure_boot_enabled = true
  vtpm_enabled        = true

  identity {
    type = "SystemAssigned"
  }

  boot_diagnostics {}

  additional_capabilities {
    ultra_ssd_enabled   = false
    hibernation_enabled = false
  }

  tags = var.tags

  lifecycle {
    ignore_changes = [
      admin_ssh_key,
      source_image_reference,
    ]
  }
}