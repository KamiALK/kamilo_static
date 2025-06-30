terraform {
  required_version = ">=1.12.1"
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

resource "azurerm_static_web_app" "prod_site" {
  name                = "webunoapp-prod"
  resource_group_name = "webuno_group"
  location            = "Central US"
  sku_tier            = "Free"
}

resource "azurerm_static_web_app" "dev_site" {
  name                = "webunoapp-dev"
  resource_group_name = "webuno_group"
  location            = "Central US"
  sku_tier            = "Free"
}

output "deployment_token_dev" {
  value     = azurerm_static_web_app.dev_site.api_key
  sensitive = true
}

output "deployment_token_prod" {
  value     = azurerm_static_web_app.prod_site.api_key
  sensitive = true
}

output "hostname_dev" {
  value = azurerm_static_web_app.dev_site.default_host_name
}

output "hostname_prod" {
  value = azurerm_static_web_app.prod_site.default_host_name
}
