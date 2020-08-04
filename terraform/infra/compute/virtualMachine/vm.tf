resource "azurerm_linux_virtual_machine" "azurevm" {
  name                = var.vmName
  resource_group_name = var.azurerg
  location            = var.location
  size                = var.vmSize
  admin_username      = var.vmUser
  disable_password_authentication = false
  admin_password = "p@zzW0rd12345"
  network_interface_ids = [var.nicID]
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = var.storage_account_type
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }
}