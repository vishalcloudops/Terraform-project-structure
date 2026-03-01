
### variable of resource_group
variable "rg" {

  type = map(object({
    name     = string
    location = string
  }))

}

## variable for storage_ account 
variable "stg" {
  type = map(object({
    name                     = string
    location                 = string
    resource_group_name      = string
    account_tier             = string
    account_replication_type = string
  }))
}

## variable for virtual_network

variable "vnet" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    address_space       = list(string)
  }))

}

## variable for virtual_subnet
variable "azurerm_subnet" {
  type = map(object({
    name                 = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))

}

## variable for vm and we have used the same for nic
variable "vm" {
  type = map(object({
    nic_name            = string
    location            = string
    resource_group_name = string
    size                = string

  }))

}