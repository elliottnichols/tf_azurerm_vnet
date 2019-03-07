provider "azurerm" {}
provider "random" {}

resource "random_id" "rg" {
  byte_length = 2
}

resource "azurerm_resource_group" "s1" {
  name     = "s1-c1-${lower(random_id.rg.hex)}"
  location = "centralus"
}

module "s1" {
  source                = "../../.."
  rg                    = "${azurerm_resource_group.s1.name}"
  location              = "${azurerm_resource_group.s1.location}"
  subnet_names          = ["Subnet1", "Subnet2"]
  subnet_address_ranges = ["10.0.0.0/24", "10.0.1.0/24"]
  dns_servers           = ["10.0.0.4", "10.0.0.5"]
}
