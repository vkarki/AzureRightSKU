variable "location"{
    type = string
    description = "resource group location to place the resource"
}

variable "subnet_id" {
    type = string
    description = "subnet id"
}

variable "pip_id" {
    type = string
    description = "Public IP address ID"
}

variable "nicName" {
    type = string
    description = "Network interface card name"
}

variable "azurerg" {
    type = string
    description = "Resource group name"
}

variable "azurevnet" {
    type = string
    description = "Azure vnet"
}

