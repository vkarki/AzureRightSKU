resource "azurerm_automation_schedule" "azautomationschedule" {
  name                    = var.azAutomationScheduleName
  resource_group_name     = var.rg
  automation_account_name = var.azAutomationAccountName
  frequency               = var.frequency
  interval                = 1
  timezone                = var.timeZone
  start_time              = var.startTime
  description             = "This is an example schedule"
  week_days               = var.weekDays
}