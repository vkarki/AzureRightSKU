
provider "azurerm" {
  subscription_id = "9166f63a-fcb8-40b6-8b20-aa1803f52fe9"
  tenant_id       = "c28b2d80-129e-4693-88bd-5f43e59072f9"
  version         = "=2.19.0"
  features {}
}

terraform {
  required_version = ">= 0.12.0"
  backend "azurerm" {
    subscription_id      = "9166f63a-fcb8-40b6-8b20-aa1803f52fe9"
    tenant_id            = "c28b2d80-129e-4693-88bd-5f43e59072f9"
    resource_group_name  = "terraformbackend"
    storage_account_name = "aewwterraformbackend"
    container_name       = "states"
    key                  = "rightsku.tfstate"
  }
}
