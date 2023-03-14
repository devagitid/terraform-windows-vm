#define whre is the backend file
terraform {
  backend "azure" {}
}

#create a resource group
resource "azurerm_resource_group" "vm_rg" {
  name = "windowsvm-rg"
  location = "east_us"
}

#create virtual network within resource group
resource "azurerm_virtual_network" "vm_vnet" {
  name = "windowsvm-vnet"
  resource_group_name = azurerm_resource_group.vm_rg.name
  location = azurerm_resource_group.vm_rg.location
}


  
