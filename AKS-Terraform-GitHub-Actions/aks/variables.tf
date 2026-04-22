# Environment
variable "env" {
  description = "Deployment environment"
  type        = string
}

# Cluster Name
variable "cluster-name" {
  description = "AKS Cluster Name"
  type        = string
}

# Azure Region
variable "azure-region" {
  description = "Azure region for deployment"
  type        = string
  default     = "East US"
}

# Node Pool Settings
variable "node_vm_sizes" {
  description = "VM size for AKS nodes"
  type        = string
  default     = "Standard_DC2s_v3"
}


variable "desired_capacity" {
  description = "Number of nodes"
  type        = number
  default     = 1
}