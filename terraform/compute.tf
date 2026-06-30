#########################################################
# Compute Module
#########################################################

module "compute" {
  source = "./modules/compute"

  resource_group_name = module.resource_group.name
  location            = var.location

  vm_name        = "vm-enterprise-lab"
  vm_size        = "Standard_B1ls"
  admin_username = "azureuser"

  ssh_public_key = var.ssh_public_key

  network_interface_id = module.networking.nic_id

  tags = var.tags
}