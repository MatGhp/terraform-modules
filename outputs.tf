output "vm_ids" {
  value = {
    for key, vm in module.vm : key => vm.vm_id
  }
}

output "vm_private_ips" {
  value = {
    for key, vm in module.vm : key => vm.private_ip
  }
}

output "vm_public_ips" {
  value = {
    for key, vm in module.vm : key => vm.public_ip
  }
}
