module "rg" {
  source = "../child_module/resource_group"

  rgs = var.resource_groups
}

module "virtual_network" {
  depends_on = [module.rg]

  source = "../child_module/virtual_network"

  vnets = var.virtual_networks
}

module "subnet" {
  depends_on = [module.virtual_network]

  source = "../child_module/subnet"

  snets = var.subnets
}