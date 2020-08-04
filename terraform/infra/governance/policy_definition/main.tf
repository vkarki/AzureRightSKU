resource "azurerm_policy_definition" "azurepolicydefinition" {
  name         = var.policyDefinitionName
  policy_type  = var.policy_type
  mode         = var.mode
  description  = var.description
  display_name = var.display_name
  metadata     =  var.metadata
  policy_rule  = var.policyrule
  parameters   = var.parameters
}