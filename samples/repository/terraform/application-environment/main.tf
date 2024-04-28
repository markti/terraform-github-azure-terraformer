data "azuread_client_config" "current" {}
data "azurerm_client_config" "current" {}


module "repo" {
  source           = "../../../../modules/repository/terraform/application-environment"
  application_name = "aztflab"
  name             = var.name
  commit_user      = var.commit_user
  environments = {
    dev = {
      subscription_id = data.azurerm_client_config.current.subscription_id
      tenant_id       = data.azuread_client_config.current.tenant_id
      client_id       = azuread_service_principal.main.client_id
      client_secret   = azuread_service_principal_password.main.value
      backend = {
        resource_group_name  = module.azure_backend.resource_group_name
        storage_account_name = module.azure_backend.storage_account_name
        container_name       = module.azure_backend.container_name
      }
    }
  }
}

