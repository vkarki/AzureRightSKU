resource "azurerm_automation_connection" "azautomationconnection" {
  name                    = var.azAutomationConnectionName
  resource_group_name     = var.rg
  automation_account_name = var.azAutomationAccountName
  type                    = "AzureServicePrincipal"

  # values = {
  #   "ApplicationId" : var.spnAppID,
  #   "TenantId" : var.tenantID,
  #   "SubscriptionId" : var.subscriptionID,
  #   "CertificateThumbprint" : var.certificateThumbprint
  # }
}