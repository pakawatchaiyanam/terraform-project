provider "azurerm" {
  features {}
}

module "vm" {
  source                = "./modules/vm"
  vm_name               = var.vm_name
  location              = var.location
  resource_group_name   = var.resource_group_name
  network_interface_id  = var.network_interface_id
  admin_username        = var.admin_username
  admin_password        = var.admin_password
  environment           = var.environment
}
