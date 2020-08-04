resource "azurerm_automation_account" "azautomationaccount" {
  name                = var.azAutomationAccountName
  location            = var.location
  resource_group_name = var.rg
  sku_name = var.sku
}