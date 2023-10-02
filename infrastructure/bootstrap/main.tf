terraform {
  required_version = "1.5.7"
  backend "azurerm" {}
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.75.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  use_oidc        = true
  subscription_id = sensitive(var.subscription_id)
  client_id       = sensitive(var.client_id)
  tenant_id       = sensitive(var.tenant_id)
  # for GitHub Actions
  oidc_request_token = var.oidc_request_token
  oidc_request_url   = var.oidc_request_url
  features {}
}
