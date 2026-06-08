#resource "azurerm_subnet" "subnet1" {
 # name                 = "subnet-1"
  #resource_group_name  = azurerm_resource_group.rg.name
  #virtual_network_name = azurerm_virtual_network.vnet.name
  #address_prefixes     = ["10.0.1.0/24"]
#}

resource "azurerm_subnet" "subnet1" {
  name                 = var.subnet1_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.subnet1_prefix
}