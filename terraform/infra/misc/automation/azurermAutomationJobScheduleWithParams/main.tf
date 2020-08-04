resource "azurerm_automation_job_schedule" "azautomationjobschedule" {
  resource_group_name     = var.rg
  automation_account_name = var.azAutomationAccountName
  schedule_name           = var.azAutomationScheduleName
  runbook_name            = var.azAutomationRunbookName
  parameters = {
  var.parameters
  }
}