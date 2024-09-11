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
    vm_name               = string
    admin_username        = string
    admin_password        = string
    vm_size               = string
    vnet_address_space    = list(string)
    subnet_address_prefix = string
  }))
  default = {}
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
