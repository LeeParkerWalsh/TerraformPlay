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

module "storage" {
  depends_on = [
    azurerm_resource_group.rg
  ]
  source                           = "./storage"
  resource_group_name              = "test-rg"
  location                         = "uksouth"
  storage_account_name             = "lpwteststorage"
  storage_account_tier             = "Standard"
  storage_account_replication_type = "LRS"
  storage_container_name           = "scripts"
  container_access_type            = "private"
}

resource "azurerm_storage_blob" "IIS" {
  name                   = "IIS.ps1"
  storage_account_name   = module.storage.storage_account_name
  storage_container_name = module.storage.storage_container_name
  type                   = "Block"
  source                 = "./scripts/IIS.ps1"
}