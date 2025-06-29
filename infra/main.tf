provider "azurerm" {
  features {}
}
resource "azurerm_static_web_app" "dev_action" {
  name                = "webunoapp-dev"
  resource_group_name = "webuno_group"
  location            = "Central US"
  sku_tier            = "Free"


  repository_url = "https://github.com/KamiALK/kamilo_static"
  branch         = "dev"
  build_properties = {
    app_location          = "/"
    api_location          = "api"
    output_location       = "build"
    app_artifact_location = "build"
  }

}
