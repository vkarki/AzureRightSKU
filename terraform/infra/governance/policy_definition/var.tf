variable "policyDefinitionName" {
    type = string
    description = " (Required) The name of the policy definition. Changing this forces a new resource to be created."
}

variable "policy_type" {
    type = string
    description = "(Required) The policy type. Possible values are BuiltIn, Custom and NotSpecified. Changing this forces a new resource to be created."
}

variable "mode" {
    type = string
    description = "(Required) The policy mode that allows you to specify which resource types will be evaluated. The value can be All, Indexed or NotSpecified. Changing this resource forces a new resource to be created."
}

variable "display_name" {
    type = string
    description = "(Required) The display name of the policy definition."
}

variable "description" {
    type = string
    description = "(Optional) The description of the policy definition."
}

variable "metadata" {
    type = string
    description = "(Optional) The metadata for the policy definition. This is a json object representing additional metadata that should be stored with the policy definition."
}

variable "policyrule" {
    type = string
    description = "(Optional) The policy rule for the policy definition. This is a json object representing the rule that contains an if and a then block."
}

variable "parameters" {
    type = string
    description = "(Optional) Parameters for the policy definition. This field is a json object that allows you to parameterize your policy definition."
}

