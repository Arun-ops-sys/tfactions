 provider "azurerm" {
  features {}
}
 
 locals { 

   location= "north Europe"
   resource_group_name ="app-grp"
   virtual_network = {
    name = "vnet1"
    address_space ="[10.10.10.0/24]"
   }

 }
 resource "azurerm_virtual_network" "appnetwork" {
   name                = local.virtual_network.name
 location            = local.location
  resource_group_name = local.resource_group_name
  address_space       = local.virtual_network.address_space
 
    
 }