variable "name" {
  type = string
}
variable "commit_user" {
  type = object({
    name  = string
    email = string
  })
}
variable "environments" {
  type = map(string)
}
variable "location" {
  type = string
}
