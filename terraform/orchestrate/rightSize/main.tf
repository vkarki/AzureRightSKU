locals {
  scope = format("/subscriptions/%s", var.subscriptionID)
}

#Creating Policy Definition for Hybrid User Benefit
module "policy_definition_hub" {
  source               = "../../infra/governance/policy_definition"
  policyDefinitionName = "audit_hybrid_user_benefit_policy"
  policy_type          = "Custom"
  mode                 = "Indexed"
  display_name         = "audit_hybrid_user_benefit_policy"
  description          = "This policy will enforce usage of hybrid use benefit."
  metadata             = var.metadata
  policyrule           = var.policyrule_hub
  parameters           = null
}

#Creating Policy Definition for VM SKU's
module "policy_definition_rightSKU" {
  source               = "../../infra/governance/policy_definition"
  policyDefinitionName = "Audit_virtual_machine_size_SKUs"
  policy_type          = "Custom"
  mode                 = "All"
  display_name         = "Audit_virtual_machine_size_SKUs"
  description          = "Audit virtual machine size SKUs"
  metadata             = var.metadata
  policyrule           = var.policyrule_rightsku
  parameters           = var.parameters_rightsku
}

#Creating an Initiative definition and adding the policies defined above
resource "azurerm_policy_set_definition" "azurermPolicySetDefinition" {
  name         = "Right SKU"
  policy_type  = "Custom"
  display_name = "Right SKU"
  parameters   = var.parameters_listofAllowedSKUs

  policy_definition_reference {
    policy_definition_id = data.azurerm_policy_definition.Audit_virtual_machine_size_SKUs.id
    parameters = {
      listOfAllowedSKUs = "[parameters('listOfAllowedSKUs')]"
    }
  }

  policy_definition_reference {
    policy_definition_id = data.azurerm_policy_definition.audit_hybrid_user_benefit_policy.id
  }

  depends_on = [module.policy_definition_hub, module.policy_definition_rightSKU]
}

#Creating an Initiative assignment
module "policy_set_assignment_rightSKU" {
  source               = "../../infra/governance/policy_assignment"
  policyAssignmentName = "Right SKU"
  scope                = local.scope
  policy_definition_id = azurerm_policy_set_definition.azurermPolicySetDefinition.id
  display_name         = "Right SKU"
  description          = "Right SKU"
  parameters           = null
}


