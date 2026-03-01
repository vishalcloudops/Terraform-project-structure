data "azurerm_subnet" "data_subnet" {
    name = "imcoresubnet"
    resource_group_name = "imcorecc"
    virtual_network_name = " imcorevnetcc"
  
}