
module "repo" {
  source      = "../../modules/gitflow"
  name        = "terraform-azurerm-vwan"
  commit_user = var.commit_user
}