variable "vnet_name" {
  type        = string
  description = "Name of the vNet"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group where vnet will be placed"
}

variable "location" {
  type        = string
  description = "the azure region where the resources will be placed"
}

variable "vnet_address_space" {
  type        = string
  description = "Address space to assign to vNet"
}

variable "subnet_name" {
  type        = string
  description = "Name of the subnet"
}

variable "subnet_address_space" {
  type        = string
  description = "Address space to assign to the subnet"
}
