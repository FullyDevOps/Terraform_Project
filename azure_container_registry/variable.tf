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

#azure container registry

variable "azurerm_container_registry" {
  description = "Name of the Azure container registry"
  type        = string
  #default     = "mafiaacr"
}

variable "azurerm_container_registry_sku" {
  type        = string
  #default     = "Standard"
}

variable "azurerm_container_registry_admin_enabled" {
  type        = bool
  #default     = false
}