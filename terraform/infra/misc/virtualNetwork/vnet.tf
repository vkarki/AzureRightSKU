locals {
  vnetName = format("${var.resource_prefix}-%s", "vnet")
}

resource "azurerm_virtual_network" "vnet" {
  name                = local.vnetName
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.resourceGroup 
}