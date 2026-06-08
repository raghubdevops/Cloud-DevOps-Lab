#resource "azurerm_subnet" "subnet2" {
 # name                 = "subnet-2"
 # resource_group_name  = azurerm_resource_group.rg.name
 # virtual_network_name = azurerm_virtual_network.vnet.name
 # address_prefixes     = ["10.0.2.0/24"]
#}


resource "azurerm_subnet" "subnet2" {
  name                 = var.subnet2_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.subnet2_prefix
}