output "azurenic" {
    value = azurerm_network_interface.azurenic.id
}

output "azureprivip" {
    value = azurerm_network_interface.azurenic.private_ip_addresses
}