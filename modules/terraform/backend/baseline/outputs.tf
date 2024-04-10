output "resource_group_name" {
  value = azurerm_resource_group.main.name
}
output "storage_account_name" {
  value = azurerm_storage_account.main.name
}
output "container_name" {
  value = azurerm_storage_container.main.name
}
output "backend_config" {
  value = {
    resource_group_name  = azurerm_resource_group.main.name
    storage_account_name = azurerm_storage_account.main.name
    container_name       = azurerm_storage_container.main.name
  }
}
