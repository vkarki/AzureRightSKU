
variable "subnet_address_prefix"{
    description = "resourceprefix"
}  

variable "azurerg" {
    type = string
    description = "resource group name"
}

variable "azurevnet" {
    type = string
    description = "virtual network name"
}

variable "subnetName" {
    type = string
    description = "subnet name"
}