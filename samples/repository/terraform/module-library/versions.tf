terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.45.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.88.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.47.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {}

provider "azurerm" {
  features {}
}