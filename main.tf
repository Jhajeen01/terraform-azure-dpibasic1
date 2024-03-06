resource "azurerm_virtual_network" "vnet" {
  count = 2
  name=element(["abcdef","bcdedfe"],count.index)
  resource_group_name = "Gaurav_RG"
  address_space = element([["10.0.0.0/16"],["10.11.0.0/16"]],count.index)
  location = "Central India"
}