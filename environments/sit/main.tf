provider "azurerm" {
  features {}
}

variable "vm_name" {
  description = "Name of the virtual machine"
  type        = string
}

variable "location" {
  description = "Location of the virtual machine"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "network_interface_id" {
  description = "Network interface ID"
  type        = string
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
}

variable "admin_password" {
  description = "Admin password for the VM"
  type        = string
  sensitive   = true
}

variable "environment" {
  description = "Environment (dev, sit, prod, etc.)"
  type        = string
}

module "vm" {
  source                = "../../modules/vm"
  vm_name               = var.vm_name
  location              = var.location
  resource_group_name   = var.resource_group_name
  network_interface_id  = var.network_interface_id
  admin_username        = var.admin_username
  admin_password        = var.admin_password
  environment           = var.environment
}
