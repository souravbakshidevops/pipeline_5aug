terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.70.0"
    }
  }
backend "azurerm" {}
}
provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "rishi" {
  name     = "rishi_bhai"
  location = "east us"

  tags = {
    owner = "sourav"
  }
}

resource "azurerm_storage_account" "storage" {
name = "souravsathvik123"
resource_group_name = azurerm_resource_group.rishi.name
location = "east us"
account_replication_type="LRS"
account_tier = "Standard"
}
