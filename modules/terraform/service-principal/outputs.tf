output "tenant_id" {
  value = data.azuread_client_config.current.tenant_id
}
output "application" {
  value = {
    id        = azuread_application.main.id
    object_id = azuread_application.main.object_id
    client_id = azuread_application.main.client_id
  }
}
output "service_principal" {
  value = {
    object_id     = azuread_service_principal.main.object_id
    client_secret = azuread_service_principal_password.main.value
  }
}
