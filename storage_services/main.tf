resource "azurerm_storage_account" "terraform-sto" {
  name                     = var.azurerm_storage_account
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.azurerm_storage_container_account_tier
  account_replication_type = var.azurerm_storage_container_account_replication_type
}

resource "azurerm_storage_container" "terraform-container" {
  name                  = var.azurerm_storage_container
  storage_account_name    = azurerm_storage_account.terraform-sto.name
  container_access_type = var.azurerm_storage_container_container_access_type
}

resource "azurerm_storage_blob" "terraform-blob" {
  name                   = var.azurerm_storage_blob_name
  storage_account_name   = azurerm_storage_account.terraform-sto.name
  storage_container_name = azurerm_storage_container.terraform-container.name
  type                   = var.azurerm_storage_blob_type
}
