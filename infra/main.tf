terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.9"
    }
  }
}

provider "azurerm" {
  features {}
}
resource "azurerm_static_web_app" "dev_site" {
  name                = "webunoapp-dev"
  resource_group_name = "webuno_group"
  location            = "Central US"
  sku_tier            = "Free"
}
