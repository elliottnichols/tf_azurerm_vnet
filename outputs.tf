output "vnet_id" {
  value = "${azurerm_virtual_network.module.id}"
}

output "vnet_name" {
  value = "${azurerm_virtual_network.module.name}"
}

output "vnet_rg" {
  value = "${azurerm_virtual_network.module.location}"
}

output "vnet_location" {
  value = "${azurerm_virtual_network.module.resource_group_name}"
}

output "vnet_address_space" {
  value = "${azurerm_virtual_network.module.address_space}"
}

output "vnet_dns_servers" {
  value = "${var.dns_servers}"
}

output "subnet_ids" {
  value = "${azurerm_subnet.module.*.id}"
}

output "subnet_ips" {
  value = "${azurerm_subnet.module.*.address_prefix}"
}