terraform {
  required_version = ">=  1.9.3"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0.0"
    }
  }

     backend "azurerm" {
     resource_group_name  = "tfstate-rg"
     storage_account_name = "Galaxy"
     container_name       = "tfffstateaccount"
     key                  = "aks/terraform.tfstate"
}
}


