# required variables
variable "resource_group_name" {
  type        = "string"
  description = "Name of the azure resource group."
}

variable "resource_group_location" {
  type        = "string"
  description = "Location of the azure resource group."
}
variable "vnet1_address_space" {
  type        = "string"
  description = "full address space allowed to the virtual network"
}
variable "vnet2_address_space" {
  type        = "string"
  description = "full address space allowed to the virtual network"
}
