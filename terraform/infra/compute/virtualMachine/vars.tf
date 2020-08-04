
variable "resource_prefix" {
    type = string
    description = "resource_prefix"
}

variable "location"{
    type = string
    description = "resource group location to place the resource"
}

variable "vmSize"{
    type = string
    description = "vmSize"
}

variable "vmUser"{
    type = string
    description = "vmuser"
}

variable "nicID"{
    description = "network interface ID"
}

variable "storage_account_type"{
    type = string
    description = "storage account type"
}

variable "vmName"{
    type = string
    description = "vm name"
}

variable "azurerg"{
    type = string
    description = "vm name"
}