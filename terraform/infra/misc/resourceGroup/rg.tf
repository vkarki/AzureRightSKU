resource "azurerm_resource_group" "rg" {
  name     = var.azurergName
  location = var.location
}