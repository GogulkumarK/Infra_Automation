resource "azurerm_resource_group" "tf_resource_group" {
  name     = "${var.resource_group_name}"
  location = "${var.resource_group_location}"

  tags {
    Source = "Vnet Peering between virtual networks"
  }
}
resource "azurerm_virtual_network" "vnet1" {
  name                = "${var.resource_group_name}-vnet1"
  location            = "${var.resource_group_location}"
  address_space       = ["${var.vnet1_address_space}"]
  resource_group_name = "${azurerm_resource_group.tf_resource_group.name}"
}
resource "azurerm_virtual_network" "vnet2" {
  name                = "${var.resource_group_name}-vnet2"
  location            = "${var.resource_group_location}"
  address_space       = ["${var.vnet2_address_space}"]
  resource_group_name = "${azurerm_resource_group.tf_resource_group.name}"
}
resource "azurerm_virtual_network_peering" "peer1" {
  name                         = "vNet1-to-vNet2"
  resource_group_name          = "${azurerm_resource_group.tf_resource_group.name}"
  virtual_network_name         = "${azurerm_virtual_network.vnet1.name}"
  remote_virtual_network_id    = "${azurerm_virtual_network.vnet2.id}"
  allow_virtual_network_access = true
  allow_forwarded_traffic      = false
  allow_gateway_transit        = false
}

resource "azurerm_virtual_network_peering" "peer2" {
  name                         = "vNet2-to-vNet1"
  resource_group_name          = "${azurerm_resource_group.tf_resource_group.name}"
  virtual_network_name         = "${azurerm_virtual_network.vnet2.name}"
  remote_virtual_network_id    = "${azurerm_virtual_network.vnet1.id}"
  allow_virtual_network_access = true
  allow_forwarded_traffic      = false
  allow_gateway_transit        = false
  use_remote_gateways          = false
}
