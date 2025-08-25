resource "azurerm_network_interface" "terraform-NIC" {
  name                = var.azurerm_network_interface
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = var.azurerm_ip_configuration
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = var.azurerm_private_ip_address_allocation
  }
}

resource "azurerm_virtual_machine" "terraform-VM" {
  name                  = var.azurerm_virtual_machine
  location              = var.location
  resource_group_name   = var.resource_group_name
  network_interface_ids = [azurerm_network_interface.terraform-NIC.id]
  vm_size               = var.azurerm_vm_size

  storage_image_reference {
    publisher = var.azurerm_publisher
    offer     = var.azurerm_offer
    sku       = var.azurerm_sku
    version   = var.azurerm_version
  }
  storage_os_disk {
    name              = var.azurerm_os_disk_name
    caching           = var.azurerm_os_disk_caching
    create_option     = var.azurerm_os_disk_create_option
    managed_disk_type = var.azurerm_os_disk_managed_disk_type
  }
  os_profile {
    computer_name  = var.azurerm_os_profile_computer_name
    admin_username = var.azurerm_os_profile_admin_username
    admin_password = var.azurerm_os_profile_admin_password
  }
  os_profile_linux_config {
    disable_password_authentication = var.azurerm_os_profile_linux_config_disable_password_authentication
  }
}