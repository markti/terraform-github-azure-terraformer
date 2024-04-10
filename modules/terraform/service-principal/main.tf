data "azuread_client_config" "current" {}

resource "azuread_application" "main" {

  display_name = var.name
  owners       = [data.azuread_client_config.current.object_id]
}

resource "azuread_service_principal" "main" {

  client_id                    = azuread_application.main.client_id
  app_role_assignment_required = false
  owners                       = [data.azuread_client_config.current.object_id]

}

resource "azuread_service_principal_password" "main" {
  service_principal_id = azuread_service_principal.main.object_id
}
