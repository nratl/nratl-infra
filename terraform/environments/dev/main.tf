module "network" {
  source              = "../../modules/network"
  location            = var.location
  environment         = var.environment
  resource_group_name = var.resource_group_name
}