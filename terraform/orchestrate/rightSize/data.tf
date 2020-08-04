data "azurerm_policy_definition" "audit_hybrid_user_benefit_policy" {
  display_name = "audit_hybrid_user_benefit_policy"
  depends_on   = [module.policy_definition_hub, module.policy_definition_rightSKU]
}


data "azurerm_policy_definition" "Audit_virtual_machine_size_SKUs" {
  display_name = "Audit_virtual_machine_size_SKUs"
  depends_on   = [module.policy_definition_hub, module.policy_definition_rightSKU]
}
