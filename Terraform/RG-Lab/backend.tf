terraform {
  backend "azurerm" {
    resource_group_name  = "rg-devops-lab"
    storage_account_name = "raghudevopslab001"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
