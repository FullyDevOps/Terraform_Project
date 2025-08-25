resource "azurerm_virtual_network" "terraform_Vnet" {
  name                  = var.azurerm_virtual_network_name
  location              = var.location
  resource_group_name   = var.resource_group_name
  address_space         = var.azurerm_address_space
}

resource "azurerm_subnet" "terraform_subnet" {
    name                    = var.azurerm_subnet
    resource_group_name     = var.resource_group_name
    virtual_network_name    = azurerm_virtual_network.terraform_Vnet.name
    address_prefixes        = var.azurerm_subnet_address_prefixes
}