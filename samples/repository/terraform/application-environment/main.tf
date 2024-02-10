data "azurerm_client_config" "current" {
}

locals {
  extended_environments = {
    for key, value in var.environments : key => {
      subscription_id = value.subscription_id
      tenant_id       = value.tenant_id
      client_id       = value.client_id
      client_secret   = value.client_secret
      backend = {
        resource_group_name  = azurerm_resource_group.main.name
        storage_account_name = azurerm_storage_account.main.name
        container_name       = azurerm_storage_container.main.name
      }
    }
  }
}

module "repo" {
  source           = "../../../../modules/repository/terraform/application-environment"
  application_name = "aztflab"
  name             = var.name
  commit_user      = var.commit_user
  environments     = local.extended_environments
}

resource "random_string" "main" {
  length  = 8
  upper   = false
  special = false
}

resource "azurerm_resource_group" "main" {
  name     = "rg-terraform-${random_string.main.result}"
  location = "westus3"
}

resource "azurerm_storage_account" "main" {
  name                     = "sttf${random_string.main.result}"
  resource_group_name      = azurerm_resource_group.main.name
  location                 = azurerm_resource_group.main.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}
resource "azurerm_storage_container" "main" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.main.name
  container_access_type = "private"
}