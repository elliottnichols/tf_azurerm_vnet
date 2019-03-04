// resource "azurerm_resource_group" "module" {
//   count = ""
//   name = ""
//   location = ""
// }

resource "azurerm_virtual_network" "module" {
  name                = "${var.vnet_name}"
  location            = "${azurerm_resource_group.test.location}"
  resource_group_name = "${azurerm_resource_group.test.name}"
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]
}

resource "azurerm_subnet" "module" {
  count                = "${length(var.subnet_names)}"
  name                 = "${var.subnet_names[count.index]}"
  virtual_network_name = "${azurerm_virtual_network.vnet.name}"
  resource_group_name  = "${azurerm_resource_group.network.name}"
  address_prefix       = "${var.subnet_address_ranges[count.index]}"
}