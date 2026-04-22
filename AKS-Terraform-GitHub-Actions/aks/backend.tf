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
     storage_account_name = "tfffstate"
     container_name       = "tfffstateaccount"
     key                  = "aks/terraform.tfstate"
}
}



provider "azurerm" {
  features {}
  subscription_id = var.azure_subscription_id
  tenant_id       = var.azure_tenant_id
}
