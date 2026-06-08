terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}
provider "azurerm" {
  features {
  }
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location

}

resource "azurerm_storage_account" "storage" {
  name                     = "raghudevopslab001"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

}

module "network" {
  source = "./modules/network"

  vnet_name           = "vnet-devops-lab"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  address_space       = ["10.0.0.0/16"]

  subnet1_name   = "subnet-1"
  subnet1_prefix = ["10.0.1.0/24"]

  subnet2_name   = "subnet-2"
  subnet2_prefix = ["10.0.2.0/24"]
}


resource "azurerm_public_ip" "lb_pip" {
  name                = "lb-public-ip"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = "Static"
  sku                 = "Standard"

}

resource "azurerm_network_interface" "vm_nic" {
  name                = "vm-nic"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  ip_configuration {
    name                          = "internal"
    subnet_id                     = module.network.subnet1_id
    private_ip_address_allocation = "Dynamic"
    
    #public_ip_address_id          = azurerm_public_ip.lb_pip.id
  }

}

resource "azurerm_public_ip" "vm_pip" {
  name                = "vm-public-ip"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = "Static"
  }

resource "azurerm_linux_virtual_machine" "vm" {
  name                = "devops-vm"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  size                = "Standard_B2ats_v2"

  admin_username = "azureuser"

  network_interface_ids = [
    azurerm_network_interface.vm_nic.id
  ]

  admin_ssh_key {
    username   = "azureuser"
    public_key = file("C:/Users/admin/.ssh/id_ed25519.pub")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}

resource "azurerm_lb" "lb" {
  name                = "devops-lb"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku                 = "Standard"

  frontend_ip_configuration {
    name = "public-ip-config"
    #public_ip_address_id = azurerm_public_ip.vm_pip.id
    public_ip_address_id = azurerm_public_ip.lb_pip.id
  }
}

resource "azurerm_lb_backend_address_pool" "backend" {
  loadbalancer_id = azurerm_lb.lb.id
  name            = "backend-pool"
}

resource "azurerm_network_interface_backend_address_pool_association" "nic_lb" {
  network_interface_id    = azurerm_network_interface.vm_nic.id
  ip_configuration_name   = "internal"
  backend_address_pool_id = azurerm_lb_backend_address_pool.backend.id
}