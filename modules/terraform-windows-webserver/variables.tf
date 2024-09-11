variable "vm_name" {
  description = "Name of the virtual machine."
  type        = string
}

variable "admin_username" {
  description = "Admin username for the VM."
  type        = string
}

variable "admin_password" {
  description = "Admin password for the VM."
  type        = string
  sensitive   = true
}

variable "vm_size" {
  description = "Size of the virtual machine."
  type        = string
}

variable "vnet_address_space" {
  description = "Address space for the virtual network."
  type        = list(string)
}

variable "subnet_address_prefix" {
  description = "Address prefix for the subnet."
  type        = string
}

variable "os_publisher" {
  description = "Publisher of the OS image."
  type        = string
}

variable "os_offer" {
  description = "Offer of the OS image."
  type        = string
}

variable "os_sku" {
  description = "SKU of the OS image."
  type        = string
}

variable "os_version" {
  description = "Version of the OS image."
  type        = string
}

variable "resource_group_name" {
  description = "The resource group name."
  type        = string
}

variable "location" {
  description = "Location of the resource."
  type        = string
}
