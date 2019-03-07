locals {
  module_tags = {
    deployment-details = "test-detail"
  }
}

resource "azurerm_virtual_network" "module" {
  resource_group_name = "${var.rg}"
  name                = "${var.vnet_name}"
  location            = "${var.location}"
  address_space       = "${var.address_space}"
  dns_servers         = "${var.dns_servers}"
  tags                = "${merge(local.module_tags,var.common_tags,var.tags)}"
}

resource "azurerm_subnet" "module" {
  count                = "${length(var.subnet_names)}"
  resource_group_name  = "${var.rg}"
  name                 = "${var.subnet_names[count.index]}"
  virtual_network_name = "${azurerm_virtual_network.module.name}"
  address_prefix       = "${var.subnet_address_ranges[count.index]}"
}
