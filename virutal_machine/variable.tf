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
variable "azurerm_virtual_network" {
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

variable "subnet_id" {
  description = "Subnet ID where NIC will be attached"
  type        = string
}


variable "azurerm_subnet_address_prefixes" {
  description = "Name of the Azure address prefix"
  type        = list(string)
  #default     = ["10.0.1.0/24"]
}

#virtual machine

variable "azurerm_network_interface" {
  description = "Name of the azure network interface"
  type        = string
  #default     = "mafianic"
}

variable "azurerm_ip_configuration" {
  description = "Name of the azure ip configuration"
  type        = string
  #default     = "testconfiguration2"
}

variable "azurerm_private_ip_address_allocation" {
  description = "Name of the azure ip configuration"
  type        = string
  #default     = "Dynamic"
}

variable "azurerm_virtual_machine" {
  description = "Name of the Azure Virtual Machine"
  type        = string
  #default     = "mafiaVM"
}

variable "azurerm_vm_size" {
  type        = string
  #default     = "Standard_D2s_v3"
}

variable "azurerm_publisher" {
  type        = string
  #default     = "Canonical"
}

variable "azurerm_offer" {
  type        = string
  #default     = "0001-com-ubuntu-server-jammy"
}

variable "azurerm_sku" {
  type        = string
  #default     = "22_04-lts"
}

variable "azurerm_version" {
  type        = string
  #default     = "latest"
}

variable "azurerm_os_disk_name" {
  type        = string
  #default     = "mafiaosdisc"
}

variable "azurerm_os_disk_caching" {
  type        = string
  #default     = "ReadWrite"
}

variable "azurerm_os_disk_create_option" {
  type        = string
  #default     = "FromImage"
}

variable "azurerm_os_disk_managed_disk_type" {
  type        = string
  #default     = "Standard_LRS"
}

variable "azurerm_os_profile_computer_name" {
  type        = string
  #default     = "karth"
}

variable "azurerm_os_profile_admin_username" {
  type        = string
  #default     = "karteekalla"
}

variable "azurerm_os_profile_admin_password" {
  type        = string
  #default     = "CHanty@12"
}

variable "azurerm_os_profile_linux_config_disable_password_authentication" {
  type        = bool
  #default     = false
}
