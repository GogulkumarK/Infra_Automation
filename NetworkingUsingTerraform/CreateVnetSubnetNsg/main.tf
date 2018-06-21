resource "azurerm_resource_group" "tf_resource_group" {
  name     = "${var.resource_group_name}"
  location = "${var.resource_group_location}"

  tags {
    Source = "Create Vnet using Terraform"
  }
}
resource "azurerm_virtual_network" "vnet" {
  name                = "${var.name_prefix}vnet"
  location            = "${var.resource_group_location}"
  address_space       = ["${var.vnet_address_space}"]
  resource_group_name = "${azurerm_resource_group.tf_resource_group.name}"
}
resource "azurerm_subnet" "subnet" {
  name                 = "${var.name_prefix}subnet"
  virtual_network_name = "${azurerm_virtual_network.vnet.name}"
  resource_group_name  = "${azurerm_resource_group.tf_resource_group.name}"
  address_prefix       = "${var.subnet_address_space}"
}

resource "azurerm_network_security_group" "nsg" {
  name                = "${var.name_prefix}nsg"
  location            = "${var.resource_group_location}"
  resource_group_name = "${azurerm_resource_group.tf_resource_group.name}"
}
