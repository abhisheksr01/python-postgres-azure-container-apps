terraform {
  required_version = "1.5.7"
  backend "azurerm" {}
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.75.0"
    }

    azuread = {
      source  = "hashicorp/azuread"
      version = "2.43.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}
