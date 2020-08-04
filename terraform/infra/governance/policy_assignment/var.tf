
  variable "policyAssignmentName" {
      type = string
      description = "(Required) The name of the Policy Assignment. Changing this forces a new resource to be created."
  }

  variable "scope" {
      type = string
      description = "(Required) The Scope at which the Policy Assignment should be applied."
  }

  variable "policy_definition_id" {
      type = string
      description = "(Required) The ID of the Policy Definition to be applied at the specified Scope."
  }

  variable "description" {
      type = string
      description = "(Optional) A description to use for this Policy Assignment. Changing this forces a new resource to be created."
  }

  variable "display_name" {
      type = string
      description = "(Optional) A friendly display name to use for this Policy Assignment. Changing this forces a new resource to be created."
  }

  variable "parameters" {
      type = string
      description = "(Optional) Parameters for the policy definition. This field is a JSON object that maps to the Parameters field from the Policy Definition. Changing this forces a new resource to be created."
  }
