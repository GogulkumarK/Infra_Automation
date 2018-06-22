output "admin_username" {
  value = "${var.admin_username}"
}

output "vm_fqdn" {
  value = "${azurerm_public_ip.pip.fqdn}"
}
