variable "location" {
    type = string
    description = "location for the resource to be placed"
}

variable "storage_account_type" {
    type = string
    description = "Describe storage account type"
}

variable "disk_size_gb" {
    type = string
    description = "Size of managed disk"
}

variable "azurerg" {
    type = string
    description = "resource group name"
}

variable "managedDiskName" {
    type = string
    description = "Data disk name"
}