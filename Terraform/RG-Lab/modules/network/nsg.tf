resource "azurerm_network_security_group" "nsg" {
  name                = "nsg-devops-lab"
  location            = var.location
  resource_group_name = var.resource_group_name
}