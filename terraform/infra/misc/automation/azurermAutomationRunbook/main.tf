
data "local_file" "script" {
  filename = "${path.module}/scripts/${var.scriptName}"
}

resource "azurerm_automation_runbook" "azautomationrunbook" {
  name                    = var.azAutomationRunbookName
  location                = var.location
  resource_group_name     = var.rg
  automation_account_name = var.azAutomationAccountName
  log_verbose             = "true"
  log_progress            = "true"
  description             = "This is a runbook"
  runbook_type            = var.runbook_type
  content = data.local_file.script.content
}
