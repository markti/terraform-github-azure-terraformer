variable "name" {
  type = string
}
variable "location" {
  type = string
}
variable "commit_user" {
  type = object({
    name  = string
    email = string
  })
}