variable "subscription_id" {
  description = "Azure subscription ID."
  type        = string
}

variable "tenant_id" {
  description = "Azure tenant ID."
  type        = string
}

variable "client_id" {
  description = "Azure client ID."
  type        = string
}

variable "client_secret" {
  description = "Azure client secret."
  type        = string
  sensitive   = true
}

variable "vm_configurations" {
  description = "Configuration for each VM."
  type = map(object({
    vm_name        = string
    admin_username = string
    admin_password = string
    vm_size        = string
    location       = string
  }))
  default = {}
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
