#resource "azurerm_virtual_network" "vnet" {
 # name                = "vnet-devops-lab"
  #location            = azurerm_resource_group.rg.location
  #resource_group_name = azurerm_resource_group.rg.name
  #address_space       = ["10.0.0.0/16"]

#}

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space
}