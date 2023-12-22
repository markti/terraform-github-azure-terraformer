resource "github_repository" "example" {
  name        = var.name
  description = "My awesome codebase"

  visibility = "public"

  template {
    owner                = "markti"
    repository           = "github-terraform-template-manual-trigger"
    include_all_branches = true
  }
}