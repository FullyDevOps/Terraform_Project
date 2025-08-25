#resource group

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


#virtual network
variable "azurerm_virtual_network_name" {
  description = "Name of the Azure virtual network"
  type        = string
  #default     = "vnet_mafia"
}

variable "azurerm_address_space" {
  description = "Name of the Azure virtual machine scale set"
  type        = list(string)
  #default     = ["10.0.0.0/16"]
}

#subnet

variable "azurerm_subnet" {
  description = "Name of the Azure subnet"
  type        = string
  #default     = "mafiasubnet"
}


variable "azurerm_subnet_address_prefixes" {
  description = "Name of the Azure address prefix"
  type        = list(string)
  #default     = ["10.0.1.0/24"]
}