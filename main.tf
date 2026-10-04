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
  name     = "rishi_and_bikram"
  location = "east us"

  tags = {
    owner = "sourav"
  }
}
resource "azurerm_resource_group" "bakshi" {
  name     = "bakshiJi-2"
  location = "east us"

  tags = {
    owner = "sourav"
  }
}

