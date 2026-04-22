provider "azurerm" {
  features {}
}

locals {
  org = "ap-medium"
  env = var.env
}

resource "azurerm_resource_group" "aks_rg" {
  name     = "${local.env}-${local.org}-aks-rg"
  location = "East US"
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "${local.env}-${local.org}-${var.cluster-name}"
  location            = azurerm_resource_group.aks_rg.location
  resource_group_name = azurerm_resource_group.aks_rg.name
  dns_prefix          = "${local.env}-aks"

  default_node_pool {
    name       = "default"
    node_count = var.desired_capacity
    vm_size    = var.node_vm_sizes
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = var.env
  }
}