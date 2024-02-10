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
  type = map(object({

    subscription_id = string
    tenant_id       = string
    client_id       = string
    client_secret   = string

  }))
}