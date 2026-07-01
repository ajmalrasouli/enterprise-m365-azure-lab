#########################################################
# Terraform Remote Backend
#########################################################

terraform {
  backend "azurerm" {
    resource_group_name  = "rg-enterprise-lab"
    storage_account_name = "stajmalterraform01"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"

    use_azuread_auth = true
    use_oidc         = true
  }
}