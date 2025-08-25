data "azurerm_client_config" "terraform-cli-confi" {}

resource "azurerm_key_vault" "terraform-keyvault" {
  name                        = var.azurerm_key_vault
  location                    = var.location
  resource_group_name         = var.resource_group_name
  enabled_for_disk_encryption = var.azurerm_key_vault_enabled_for_disk_encryption
  tenant_id                   = data.azurerm_client_config.terraform-cli-confi.tenant_id
  soft_delete_retention_days  = var.azurerm_key_vault_soft_delete_retention_days
  purge_protection_enabled    = var.azurerm_key_vault_purge_protection_enabled
  sku_name                    = var.azurerm_key_vault_sku_name

access_policy {
    tenant_id = data.azurerm_client_config.terraform-cli-confi.tenant_id
    object_id = data.azurerm_client_config.terraform-cli-confi.object_id

    key_permissions = var.azurerm_key_vault_key_permissions

    secret_permissions = var.azurerm_key_vault_secret_permissions
  }
}
resource "azurerm_key_vault_key" "terraform-keys" {
  name         = var.azurerm_key_vault_keys_key_name
  key_vault_id = azurerm_key_vault.terraform-keyvault.id
  key_type     = var.azurerm_key_vault_keys_key_type
  key_size     = var.azurerm_key_vault_keys_key_size

  key_opts = var.azurerm_key_vault_keys_key_opts

}

resource "azurerm_key_vault_secret" "terraform-secret" {
  name         = var.azurerm_key_vault_keys_secret_name
  value        = var.azurerm_key_vault_secrets_value
  key_vault_id = azurerm_key_vault.terraform-keyvault.id

}
