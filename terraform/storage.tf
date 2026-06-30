#########################################################
# Terraform Backend Storage Account
#########################################################

resource "azurerm_storage_account" "tfstate" {
  name                = "stajmalterraform01"
  resource_group_name = module.resource_group.name
  location            = var.location

  account_tier             = "Standard"
  account_replication_type = "LRS"

  min_tls_version = "TLS1_2"

  tags = var.tags
}
resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate"
  storage_account_id    = azurerm_storage_account.tfstate.id
  container_access_type = "private"
}