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

#storage services

variable "azurerm_storage_account" {
  description = "Name of the Azure storage account"
  type        = string
  #default     = "mafiastorage007"
}

variable "azurerm_storage_container" {
  description = "Name of the Azure storage container"
  type        = string
  #default     = "mafiablob007"
}

variable "azurerm_storage_container_account_tier" {
  type        = string
  #default     = "Standard"
}

variable "azurerm_storage_container_account_replication_type" {
  type        = string
  #default     = "LRS"
}

variable "azurerm_storage_container_container_access_type" {
  type        = string
  #default     = "private"
}

variable "azurerm_storage_blob_name" {
  type        = string
  #default     = "mafiablob007"
}

variable "azurerm_storage_blob_type" {
  type        = string
  #default     = "Block"
}
