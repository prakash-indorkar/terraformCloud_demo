terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=4.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "146c07c5-5543-41fb-8f52-c697768ac9da"
}

resource "azurerm_resource_group" "this" {
  location = "Australia East"
  name     = "sample-resource-group1"
}