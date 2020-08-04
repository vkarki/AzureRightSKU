resource "azurerm_network_security_group" "nsg" {
  name                = var.nsgName
  location            = var.location
  resource_group_name = var.azurerg
    security_rule {
    access                     = "Allow"
    direction                  = "Inbound"
    name                       = "http-inbound"
    priority                   = 101
    protocol                   = "TCP"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  security_rule {
    access                     = "Allow"
    direction                  = "Outbound"
    name                       = "http-outbound"
    priority                   = 101
    protocol                   = "TCP"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
   security_rule {
    access                     = "Allow"
    direction                  = "Inbound"
    name                       = "https-inbound"
    priority                   = 100
    protocol                   = "TCP"
    source_port_range          = "*"
    destination_port_range     = "443"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  security_rule {
    access                     = "Allow"
    direction                  = "Outbound"
    name                       = "https-outbound"
    priority                   = 100
    protocol                   = "TCP"
    source_port_range          = "*"
    destination_port_range     = "443"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  security_rule {
    access                     = "Allow"
    direction                  = "Inbound"
    name                       = "ssh-inbound"
    priority                   = 103
    protocol                   = "TCP"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}
