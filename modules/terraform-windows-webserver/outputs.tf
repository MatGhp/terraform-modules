output "vm_ip_address" {
  description = "The public IP address of the Windows VM"
  value       = azurerm_public_ip.vm_public_ip.ip_address
}

output "admin_username" {
  description = "The admin username for the Windows VM"
  value       = var.admin_username
}

output "vm_name" {
  description = "The name of the Windows VM"
  value       = var.vm_name
}
