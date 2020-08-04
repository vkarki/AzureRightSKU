resource "azurerm_managed_disk" "azuremanageddisk" {
  name                 = var.managedDiskName
  location             = var.location
  resource_group_name  = var.azurerg
  storage_account_type = var.storage_account_type
  create_option        = "Empty"
  disk_size_gb         = var.disk_size_gb
}