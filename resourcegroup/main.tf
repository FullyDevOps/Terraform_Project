resource "azurerm_resource_group" "terraform-RG" {
  name     = var.resource_group_name
  location = var.location
}
