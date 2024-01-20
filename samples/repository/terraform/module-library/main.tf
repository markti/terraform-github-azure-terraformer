data "azuread_client_config" "current" {}
data "azurerm_client_config" "current" {}


module "repo" {

  source      = "../../../../modules/repository/terraform/module-library"
  name        = var.name
  commit_user = var.commit_user
  environment = {
    subscription_id = data.azurerm_client_config.current.subscription_id
    tenant_id       = data.azuread_client_config.current.tenant_id
    client_id       = azuread_service_principal.main.client_id
    client_secret   = azuread_service_principal_password.main.value
  }
  modules = var.modules

}
