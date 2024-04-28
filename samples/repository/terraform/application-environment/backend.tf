module "azure_backend" {
  source  = "markti/azure-terraformer/azurerm//modules/terraform/backend/baseline"
  version = "1.0.19"

  location = var.location
}

