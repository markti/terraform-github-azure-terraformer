module "terraform_manual" {

  source = "../../../pipeline/terraform/manual-targeting"

  repository  = github_repository.main.name
  branch      = github_branch.main.branch
  commit_user = var.commit_user

}