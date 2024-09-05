output "vm_id" {
  description = "The ID of the VM."
  value       = azurerm_windows_virtual_machine.vm.id
}

output "private_ip" {
  description = "The private IP of the VM."
  value       = azurerm_network_interface.vm_nic.private_ip_address
}

output "public_ip" {
  description = "The public IP of the VM."
  value       = azurerm_public_ip.vm_public_ip.ip_address
}
