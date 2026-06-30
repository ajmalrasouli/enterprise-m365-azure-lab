#########################################################
# Storage Module
#########################################################

module "storage" {
  source = "./modules/storage"

  resource_group_name = module.resource_group.name
  location            = var.location

  storage_account_name = var.storage_account_name

  account_tier     = "Standard"
  replication_type = "LRS"

  tags = var.tags
}