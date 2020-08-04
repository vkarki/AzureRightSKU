resource "azurerm_public_ip" "azurepip" {
  name                = var.pipName
  resource_group_name = var.azurerg
  location            = var.location
  allocation_method   = "Dynamic"
}