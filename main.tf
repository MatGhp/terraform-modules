terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
  client_id       = var.client_id
  client_secret   = var.client_secret
}

module "general_module" {
  source="./modules/general"
  resource_group_name= local.resource_group_name
  location = local.location
}

module "vm" {
  source                = "./modules/terraform-windows-webserver"
  for_each              = var.vm_configurations
  resource_group_name   = local.resource_group_name
  location              = local.location
  vm_name               = each.value.vm_name
  admin_username        = each.value.admin_username
  admin_password        = each.value.admin_password
  vm_size               = each.value.vm_size
  vnet_address_space    = each.value.vnet_address_space
  subnet_address_prefix = each.value.subnet_address_prefix
  os_publisher          = var.os_publisher
  os_offer              = var.os_offer
  os_sku                = var.os_sku
  os_version            = var.os_version
}
