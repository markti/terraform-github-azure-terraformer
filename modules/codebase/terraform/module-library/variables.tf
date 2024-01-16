variable "repository" {
  type = string
}
variable "branch" {
  type = string
}
variable "path" {
  type    = string
  default = "modules/cis/v2.0.0"
}
variable "commit_user" {
  type = object({
    name  = string
    email = string
  })
}