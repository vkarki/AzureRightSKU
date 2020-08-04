resource "azurerm_automation_connection_service_principal" "azurerm_automation_connection_service_principal" {
  name                    = var.azAutomationConnectionSPN
  resource_group_name     = var.rg
  automation_account_name = var.azAutomationAccountName
  application_id          = var.spnAppID
  tenant_id               = var.tenantID
  subscription_id         = var.subscriptionID
  certificate_thumbprint  = file("${path.module}/automation_certificate_test.thumb")
}