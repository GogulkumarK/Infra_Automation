# required variables
variable "resource_group" {
  description = "Name of the resource group in which to deploy your new Virtual Machine"
}

variable "existing_vnet_resource_group" {
  description = "Name of the existing resource group in which the existing vnet resides"
}

variable "location" {
  description = "The location/region where the virtual network resides."
}

variable "hostname" {
  description = "This variable is used in this template to create the domain name label as well as the virtual machine name. Must be unique."
}

variable "os_type" {
  description = "Type of OS on the existing vhd. Allowed values: 'windows' or 'linux'."
  default     = "linux"
}

variable "existing_storage_acct" {
  description = "The name of the storage account in which your existing VHD and image reside"
}

variable "existing_virtual_network_name" {
  description = "The name for the existing virtual network"
}

variable "existing_subnet_name" {
  description = "The name for the existing subnet in the existing virtual network"
}

variable "existing_subnet_id" {
  description = "The id for the existing subnet in the existing virtual network"
}

variable "address_space" {
  description = "The address space that is used by the virtual network. You can supply more than one address space. Changing this forces a new resource to be created."
  default     = "10.0.0.0/16"
}

variable "subnet_prefix" {
  description = "The address prefix to use for the subnet."
  default     = "10.0.10.0/24"
}

variable "storage_account_tier" {
  description = "Defines the Tier of storage account to be created. Valid options are Standard and Premium."
  default     = "Standard"
}

variable "storage_replication_type" {
  description = "Defines the Replication Type to use for this storage account. Valid options include LRS, GRS etc."
  default     = "LRS"
}

variable "vm_size" {
  description = "Specifies the size of the virtual machine."
}

variable "image_publisher" {
  description = "name of the publisher of the image (az vm image list)"
}

variable "image_offer" {
  description = "the name of the offer (az vm image list)"
}

variable "image_sku" {
  description = "image sku to apply (az vm image list)"
}

variable "image_version" {
  description = "version of the image to apply (az vm image list)"
  default     = "latest"
}

variable "admin_username" {
  description = "administrator user name"
  default     = "vmadmin"
}

variable "admin_password" {
  description = "administrator password (recommended to disable password auth)"
  
}

