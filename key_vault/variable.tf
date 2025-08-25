# resource group
variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
  #default     = "mafia-Res-Gro"
}

variable "location" {
  description = "Azure region where the Resource Group will be created"
  type        = string
  #default     = "Central US"
}

#keyvaults

variable "azurerm_key_vault" {
  description = "Name of the Azure key vault"
  type        = string
  #default     = "mafiavault"
}

variable "azurerm_key_vault_soft_delete_retention_days" {
  type        = number
  #default     = 7
}

variable "azurerm_key_vault_enabled_for_disk_encryption" {
  type        = bool
  #default     = true
}

variable "azurerm_key_vault_purge_protection_enabled" {
  type        = bool
  #default     = false
}

variable "azurerm_key_vault_sku_name" {
  type        = string
  #default     = "standard"
}

variable "azurerm_key_vault_key_permissions" {
  type        = list(string)
  /*default     = [
      "Create",
      "Delete",
      "Get",
      "Purge",
      "Recover",
      "Update",
      "GetRotationPolicy",
      "SetRotationPolicy"
    ]*/
}

variable "azurerm_key_vault_secret_permissions" {
  type        = list(string)
  /*default     = [
      "Set",
      "Get",
      "Delete",
      "Purge",
      "Recover"
    ]*/
}

variable "azurerm_key_vault_keys_key_name" {
  type        = string
  #default     = "mafiakeyvaultkey007"
}

variable "azurerm_key_vault_keys_key_type" {
  type        = string
  #default     = "RSA"
}

variable "azurerm_key_vault_keys_key_size" {
  type        = number
  #default     = 2048
}

variable "azurerm_key_vault_keys_key_opts" {
  type        = list(string)
  /*default     = [
    "decrypt",
    "encrypt",
    "sign",
    "unwrapKey",
    "verify",
    "wrapKey",
  ]*/
}

variable "azurerm_key_vault_keys_secret_name" {
  type        = string
  #default     = "mafiakeyvaultsecret007"
}

variable "azurerm_key_vault_secrets_value" {
  type        = string
  #default     = "szechuan"
}