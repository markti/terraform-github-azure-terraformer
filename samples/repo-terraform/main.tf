
module "repo" {
  source      = "../../modules/repository/terraform"
  name        = "terraform-azurerm-vwan"
  commit_user = var.commit_user
}