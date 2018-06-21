# required variables
variable "resource_group_name" {
  type        = "string"
  description = "Name of the azure resource group."
}

variable "resource_group_location" {
  type        = "string"
  description = "Location of the azure resource group."
}
variable "name_prefix" {
  type        = "string"
  description = "unique part of the name to give to resources"
}
variable "vnet_address_space" {
  type        = "string"
  description = "full address space allowed to the virtual network"
  default     = "10.0.0.0/16"
}
variable "subnet_address_space" {
  type        = "string"
  description = "the subset of the virtual network for this subnet"
  default     = "10.0.10.0/24"
}
