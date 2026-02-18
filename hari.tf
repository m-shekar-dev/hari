resource "azurerm_virtual_network" "vn" {
  name = "vn1"
  location = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space = [ "10.0.0.0/24" ]
}
resource "azurerm_subnet" "subnet"{
    name = "sub1"
    resource_group_name =  azurerm_resource_group.rg.name
    virtual_network_name = azurerm_virtual_network.vn.name
    address_prefixes = [ "10.1.0.0/24" ]
}