### Module for resource_group
module "rg" {
  source = "../modules/azurerm_resource"
  rg     = var.rg

}

### module for storage_account with dependemt on RG
module "stg" {
  depends_on = [module.rg]
  source     = "../modules/azurerm_storage"
  stg        = var.stg

}

###module for vnet and dependent on RG

module "vnet" {
  depends_on = [module.rg]
  source     = "../modules/azurerm_vnet"
  vnet       = var.vnet

}

## module for subnet dependent on vnet

module "azurerm_subnet" {
  depends_on     = [module.vnet]
  source         = "../modules/azurerm_subnet"
  azurerm_subnet = var.azurerm_subnet

}

### modele for VN and NIC

module "vm" {
  depends_on = [module.azurerm_subnet]
  source     = "../modules/virtual machine"
  vm         = var.vm

}