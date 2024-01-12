
module "repo" {
  source       = "../../modules/repository/terraform"
  application_name = "aztflab"
  name         = var.name
  commit_user  = var.commit_user
  environments = var.environments
}