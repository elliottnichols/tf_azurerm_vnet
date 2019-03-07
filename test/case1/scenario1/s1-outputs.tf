output "vnet_id" {
  value = "${module.s1.vnet_id}"
}

output "vnet_name" {
  value = "${module.s1.vnet_name}"
}

output "vnet_rg" {
  value = "${module.s1.vnet_rg}"
}

output "vnet_location" {
  value = "${module.s1.vnet_location}"
}

output "vnet_address_space" {
  value = "${module.s1.vnet_address_space}"
}

output "vnet_dns_servers" {
  value = "${module.s1.vnet_dns_servers}"
}

output "subnet_ids" {
  value = "${module.s1.subnet_ids}"
}

output "subnet_ips" {
  value = "${module.s1.subnet_ips}"
}
