resource "random_id" "rg" {
  byte_length = 2
}

resource "azurerm_resource_group" "s1" {
  name     = "s1-c1-${lower(random_id.rg.hex)}"
  location = "centralus"
}

module "s1" {
  source   = "../../.."
  rg       = "${azurerm_resource_group.s1.name}"
  location = "${azurerm_resource_group.s1.location}"
}
