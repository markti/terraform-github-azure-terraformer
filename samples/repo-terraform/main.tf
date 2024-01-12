
module "repo" {
  source      = "../../modules/repository/terraform"
  name        = var.name
  commit_user = var.commit_user
}