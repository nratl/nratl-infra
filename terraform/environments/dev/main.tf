module "network" {
  source              = "../../modules/network"
  location            = var.location
  environment         = var.environment
  resource_group_name = var.resource_group_name
}

module "aks" {
  source = "../../modules/aks"

  cluster_name        = "aks-nratl-${var.environment}"
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "nratl-${var.environment}"
  kubernetes_version  = "1.36.0"
  vnet_subnet_id      = module.network.subnet_aks_id

  system_node_count = 1
  system_vm_size    = "Standard_B2s"
  user_node_count   = 1
  user_vm_size      = "Standard_B2s"

  tags = {
    environment = var.environment
    project     = "nratl"
    managed_by  = "terraform"
  }
}
