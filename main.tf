resource "azurerm_resource_group" "rg" {
  name     = "test-rg"
  location = "uksouth"
}

module "vnet" {
  depends_on = [
    azurerm_resource_group.rg
  ]
  source               = "./network"
  resource_group_name  = "test-rg"
  location             = "uksouth"
  vnet_name            = "new-vnet"
  vnet_address_space   = "10.10.0.0/16"
  subnet_name          = "subnet01"
  subnet_address_space = "10.10.10.0/24"
}
