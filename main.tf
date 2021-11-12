provider "azurerm" {
  version = "2.46.0"
}

# Create a resource group
resource "azurerm_resource_group" "demo" {
  name     = "${var.project}-rg"
  location = var.location
}
