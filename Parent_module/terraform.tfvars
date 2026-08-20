resource_groups = {
  rg1 = {
    name     = "test_rg"
    location = "eastus"
  }

  rg2 = {
    name     = "rest_rg"
    location = "eastus"
  }
}

virtual_networks = {
  vnet1 = {
    name                = "testvnet"
    location            = "eastus"
    resource_group_name = "test_rg"
    address_space       = ["10.0.0.0/16"]
  }
}

subnets = {
  snet1 = {
    name                 = "netsub"
    resource_group_name  = "test_rg"
    virtual_network_name = "testvnet"
    address_prefixes     = ["10.0.1.0/24"]
  }

  snet2 = {
    name                 = "starb_sub"
    resource_group_name  = "test_rg"
    virtual_network_name = "testvnet"
    address_prefixes     = ["10.0.2.0/24"]
  }
}