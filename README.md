Terraform modules:

# Windows VM with IIS and Web Deploy Terraform Module

This Terraform module deploys a Windows Virtual Machine with IIS and Web Deploy installed, ready for .NET 8 application deployment.

## Usage

```hcl
module "windows_webserver" {
  source              = "./terraform-windows-webserver"
  resource_group_name = "myResourceGroup"
  location            = "West Europe"
  vm_name             = "myWindowsVM"
  admin_username      = "adminuser"
  admin_password      = "Password123!"
}