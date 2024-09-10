vm_configurations = {
  "vm1" = {
    vm_name        = "vm-west"
    admin_username = "adminuser1"
    admin_password = "Password123!"
    vm_size        = "Standard_DS2_v2"
    location       = "West Europe"
  },
  "vm2" = {
    vm_name        = "vm-east"
    admin_username = "adminuser2"
    admin_password = "Password456!"
    vm_size        = "Standard_DS2_v2"
    location       = "East US"
  }
}

vnet_address_space    = ["10.0.0.0/16"]
subnet_address_prefix = ["10.0.1.0/24"]

os_publisher = "MicrosoftWindowsServer"
os_offer     = "WindowsServer"
os_sku       = "2019-Datacenter"
os_version   = "latest"

subscription_id = "xx"
tenant_id       = "xx"
client_id       = "xx"
client_secret   = "xx"
