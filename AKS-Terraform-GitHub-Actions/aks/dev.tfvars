# Environment
env                   = "dev"
azure-region          = "eastus"

# Networking
vnet-cidr-block       = "10.16.0.0/16"
vnet-name             = "vnet"
pub-subnet-count      = 3
pub-cidr-block        = ["10.16.0.0/20", "10.16.16.0/20", "10.16.32.0/20"]
pub-sub-name          = "subnet-public"
pri-subnet-count      = 3
pri-cidr-block        = ["10.16.128.0/20", "10.16.144.0/20", "10.16.160.0/20"]
pri-sub-name          = "subnet-private"
public-rt-name        = "public-route-table"
private-rt-name       = "private-route-table"
nat-gw-name           = "nat-gw"
public-ip-name        = "nat-public-ip"
aks-nsg               = "aks-nsg"

# AKS Cluster
is-aks-cluster-enabled     = true
cluster-version            = "1.29.0"   # latest supported AKS version
cluster-name               = "aks-cluster"
node_vm_sizes              = ["Standard_D2s_v3", "Standard_DS3_v2"]
desired_capacity           = 2
min_capacity               = 1
max_capacity               = 5

# Addons (Azure built-in)
addons = [
  {
    name    = "azure-cni"
    version = "latest"
  },
  {
    name    = "coredns"
    version = "latest"
  },
  {
    name    = "kube-proxy"
    version = "latest"
  },
  {
    name    = "azure-disk-csi-driver"
    version = "latest"
  }
]
