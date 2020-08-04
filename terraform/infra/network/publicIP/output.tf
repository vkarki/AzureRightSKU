output "azurepip" {
    value = azurerm_public_ip.azurepip.id
}

output "azurepip_address" {
    value = azurerm_public_ip.azurepip.ip_address
}