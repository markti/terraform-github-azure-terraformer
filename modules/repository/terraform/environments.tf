resource "github_repository_environment" "dev" {
  environment = "dev"
  repository  = github_repository.main.name
  reviewers {
    users = [data.github_user.current.id]
  }
  deployment_branch_policy {
    protected_branches     = true
    custom_branch_policies = false
  }
}
resource "github_repository_environment" "prod" {
  environment = "prod"
  repository  = github_repository.main.name
  reviewers {
    users = [data.github_user.current.id]
  }
  deployment_branch_policy {
    protected_branches     = true
    custom_branch_policies = false
  }
}