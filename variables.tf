variable "resource_group_name" {
  description = "(Required) The name of the resource group in which to create the virtual network."
  default = "rg-shared-network"
}

variable "location" {
  description = "(Required) The location/region where the virtual network is created. Changing this forces a new resource to be created."
}

variable "vnet_name" {
  description = "(Required) The name of the virtual network. Changing this forces a new resource to be created."
  default  = "vnet1"
}

variable "address_space" {
  description = "(Required) List of IP CIDR addresses, in network/mask_bits - CIDR notation, assigned to the virtual network. Changing this may force a new resource to be created."
  default = ["10.0.0.0/16"]
}

variable "dns_servers" {
  description = "(Optional) List of IP addresses of DNS servers"
  default = []
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the resource."
  default = []
}

variable "subnet_names" {
  description = "List of subnet names."
  default = ["subnet1"]
}

variable "subnet_address_ranges" {
  description = "List of IP address ranges corresponding to subnet_names. Names and address ranges "
  default = ["10.0.0.0/22"]
}
