#########################################################
# Networking Module
#########################################################

module "networking" {
  source = "./modules/networking"

  location            = var.location
  resource_group_name = module.resource_group.name
  tags                = var.tags
}