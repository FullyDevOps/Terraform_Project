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


#azure kubernetes services

variable "azurerm_kubernetes_cluster" {
  description = "Name of the Azure kubernetes cluster"
  type        = string
  #default     = "mafialkubectl"
}

variable "azurerm_kubernetes_cluster_dns_prefix" {
  type        = string
  #default     = "exampleaks1"
}

variable "azurerm_kubernetes_cluster_node_pool_name" {
  type        = string
  #default     = "default"
}

variable "azurerm_kubernetes_cluster_node_count" {
  type        = number
  #default     = 1
}

variable "azurerm_kubernetes_cluster_vm_size" {
  type        = string
  #default     = "Standard_D2s_v3"
}

variable "azurerm_kubernetes_cluster_identity" {
  type        = string
  #default     = "SystemAssigned"
}