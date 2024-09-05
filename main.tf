terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = terraform.workspace.subscription_id
  client_id       = terraform.workspace.client_id
  client_secret  = terraform.workspace.client_secret
  tenant_id       = terraform.workspace.tenant_id
}

resource "azurerm_resource_group" "this" {
  location = "Australia East"
  name     = "sample-resource-group1"
}