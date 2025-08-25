output "azurerm_virtual_network" {
  value = azurerm_virtual_network.terraform_Vnet.name
}

output "azurerm_address_space" {
  value = azurerm_virtual_network.terraform_Vnet.address_space
}

output "azurerm_subnet" {
  value = azurerm_subnet.terraform_subnet.name
}

output "azurerm_subnet_address_prefixes" {
  value = [azurerm_subnet.terraform_subnet.address_prefixes]
}

output "subnet_id" {
  value = azurerm_subnet.terraform_subnet.id
}
