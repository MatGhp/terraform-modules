variable "resource_group_name" {
  description = "The name of the resource group in which to create the VM."
  type        = string
}

variable "location" {
  description = "The Azure region in which to create the VM."
  type        = string
  default     = "West Europe"
}

variable "vm_name" {
  description = "The name of the virtual machine."
  type        = string
  default     = "windows-vm"
}

variable "admin_username" {
  description = "The admin username for the VM."
  type        = string
  default     = "adminuser"
}

variable "admin_password" {
  description = "The admin password for the VM."
  type        = string
  sensitive   = true
}

variable "vm_size" {
  description = "The size of the virtual machine."
  type        = string
  default     = "Standard_DS2_v2"
}

variable "vnet_address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_address_prefix" {
  description = "The address prefix for the subnet."
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "os_publisher" {
  description = "The publisher of the OS image."
  type        = string
  default     = "MicrosoftWindowsServer"
}

variable "os_offer" {
  description = "The offer of the OS image."
  type        = string
  default     = "WindowsServer"
}

variable "os_sku" {
  description = "The SKU of the OS image."
  type        = string
  default     = "2019-Datacenter"
}

variable "os_version" {
  description = "The version of the OS image."
  type        = string
  default     = "latest"
}
