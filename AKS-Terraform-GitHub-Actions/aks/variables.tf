# General
variable "azure-region" {}
variable "env" {}
variable "cluster-name" {}

# Networking
variable "vnet-cidr-block" {}
variable "vnet-name" {}
variable "pub-subnet-count" {}
variable "pub-cidr-block" {
  type = list(string)
}
variable "pub-sub-name" {}
variable "pri-subnet-count" {}
variable "pri-cidr-block" {
  type = list(string)
}
variable "pri-sub-name" {}
variable "public-rt-name" {}
variable "private-rt-name" {}
variable "nat-gw-name" {}
variable "public-ip-name" {}
variable "aks-nsg" {}

# AKS Cluster
variable "is-aks-cluster-enabled" {}
variable "cluster-version" {}
variable "node_vm_sizes" {
  type    = list(string)
  default = ["Standard_D2s_v3"]
}
variable "desired_capacity" {}
variable "min_capacity" {}
variable "max_capacity" {}

# Addons (Azure equivalents)
variable "addons" {
  type = list(object({
    name    = string
    version = string
  }))
}
