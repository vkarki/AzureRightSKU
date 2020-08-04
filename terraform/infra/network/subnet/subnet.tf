resource "azurerm_subnet" "azuresubnet" {
  name                 = var.subnetName
  resource_group_name  = var.azurerg
  virtual_network_name = var.azurevnet
  address_prefix       = var.subnet_address_prefix
}