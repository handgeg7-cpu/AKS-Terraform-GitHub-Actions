locals {
  org = "ap-medium"
  env = var.env
}

module "aks" {
  source = "../module"

  # Networking
  env              = var.env
  cluster-name     = "${local.env}-${local.org}-${var.cluster-name}"
  cidr-block       = var.vnet-cidr-block
  vnet-name        = "${local.env}-${local.org}-${var.vnet-name}"
  pub-subnet-count = var.pub-subnet-count
  pub-cidr-block   = var.pub-cidr-block
  pub-sub-name     = "${local.env}-${local.org}-${var.pub-sub-name}"
  pri-subnet-count = var.pri-subnet-count
  pri-cidr-block   = var.pri-cidr-block
  pri-sub-name     = "${local.env}-${local.org}-${var.pri-sub-name}"
  public-rt-name   = "${local.env}-${local.org}-${var.public-rt-name}"
  private-rt-name  = "${local.env}-${local.org}-${var.private-rt-name}"
  nat-gw-name      = "${local.env}-${local.org}-${var.nat-gw-name}"
  public-ip-name   = "${local.env}-${local.org}-${var.public-ip-name}"
  aks-nsg          = var.aks-nsg

  # AKS Cluster
  is_aks_cluster_enabled = var.is_aks_cluster_enabled
  cluster-version        = var.cluster-version
  node_vm_sizes          = var.node_vm_sizes
  desired_capacity       = var.desired_capacity
  min_capacity           = var.min_capacity
  max_capacity           = var.max_capacity

  # Addons (Azure equivalents)
  addons = var.addons
}
