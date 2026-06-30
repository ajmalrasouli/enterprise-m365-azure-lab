resource "azurerm_linux_virtual_machine" "vm" {

  name                = var.vm_name
  resource_group_name = var.resource_group_name
  location            = var.location

  size = var.vm_size

  admin_username = var.admin_username

  network_interface_ids = [
    var.network_interface_id
  ]

  disable_password_authentication = true

  admin_ssh_key {
    username   = var.admin_username
    public_key = var.ssh_public_key
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "StandardSSD_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "ubuntu-24_04-lts"
    sku        = "server"
    version    = "latest"
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