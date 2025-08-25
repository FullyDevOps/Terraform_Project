resource "azurerm_container_registry" "terraform-acr" {
  name                = var.azurerm_container_registry
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.azurerm_container_registry_sku
  admin_enabled       = var.azurerm_container_registry_admin_enabled
}