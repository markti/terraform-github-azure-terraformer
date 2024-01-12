
variable "commit_user" {
  type = object({
    name  = string
    email = string
  })
}