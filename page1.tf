data "azurerm_resource_group" "rg" {
  name = "Gaurav_RG"
}
resource "azurerm_virtual_network" "vnet" {
  name = "vnetad"
  address_space = [ "10.0.0.0/25" ]
  resource_group_name = data.azurerm_resource_group.rg.name
  location = data.azurerm_resource_group.rg.location
}
