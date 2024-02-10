variable "resource_group_name" {
  type        = string
  description = "Name of the resource group where vnet will be placed"
}

variable "location" {
  type        = string
  description = "the azure region where the resources will be placed"
}

variable "storage_account_name" {
  type        = string
  description = "the storage account name"
}

variable "storage_account_tier" {
  type        = string
  description = "the storage account tier"
}

variable "storage_account_replication_type" {
  type        = string
  description = "the storage account replication type"
}

variable "storage_container_name" {
  type        = string
  description = "the container name"
}

variable "container_access_type" {
  type        = string
  description = "container access type"
}
