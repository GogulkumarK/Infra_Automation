resource "azurerm_resource_group" "tf_resource_group" {
  name     = "${var.resource_group_name}"
  location = "${var.resource_group_location}"

  tags {
    Source = "Create Vnet and three subnets using Terraform"
  }
}
resource "azurerm_virtual_network" "vnet" {
  name                = "${var.name_prefix}vnet"
  location            = "${var.resource_group_location}"
  address_space       = ["${var.vnet_address_space}"]
  resource_group_name = "${azurerm_resource_group.tf_resource_group.name}"
}
resource "azurerm_subnet" "subnet1" {
  name                 = "${var.name_prefix}subnet1"
  virtual_network_name = "${azurerm_virtual_network.vnet.name}"
  resource_group_name  = "${azurerm_resource_group.tf_resource_group.name}"
  address_prefix       = "${var.subnet1_address_space}"
}
resource "azurerm_subnet" "subnet2" {
  name                 = "${var.name_prefix}subnet2"
  virtual_network_name = "${azurerm_virtual_network.vnet.name}"
  resource_group_name  = "${azurerm_resource_group.tf_resource_group.name}"
  address_prefix       = "${var.subnet2_address_space}"
}
resource "azurerm_subnet" "subnet3" {
  name                 = "${var.name_prefix}subnet3"
  virtual_network_name = "${azurerm_virtual_network.vnet.name}"
  resource_group_name  = "${azurerm_resource_group.tf_resource_group.name}"
  address_prefix       = "${var.subnet3_address_space}"
}
