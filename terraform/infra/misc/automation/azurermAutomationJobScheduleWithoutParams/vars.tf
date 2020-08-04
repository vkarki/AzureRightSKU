variable "rg" {
    type = string
    description = "(optional) describe your variable"
}  

variable "azAutomationRunbookName" {
    type = string
    description = "(optional) describe your variable"
}  

variable "azAutomationScheduleName" {
    type = string
    description = "(optional) describe your variable"
}  

variable "azAutomationAccountName" {
    type = string
    description = "(optional) describe your variable"
}  

variable "jobschedule_depends_on" {
  description = "Variable to force module to wait for the Virtual Network creation to finish"  
}