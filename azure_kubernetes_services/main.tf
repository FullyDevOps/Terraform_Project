resource "azurerm_kubernetes_cluster" "terraform-kubectl" {
  name                = var.azurerm_kubernetes_cluster
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.azurerm_kubernetes_cluster_dns_prefix

  default_node_pool {
    name       = var.azurerm_kubernetes_cluster_node_pool_name
    node_count = var.azurerm_kubernetes_cluster_node_count
    vm_size    = var.azurerm_kubernetes_cluster_vm_size
  }

  identity {
    type = var.azurerm_kubernetes_cluster_identity
  }
}
