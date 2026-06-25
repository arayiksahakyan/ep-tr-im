variable "location" {
  type        = string
  description = "Azure region for all resources."
}

variable "resource_group_name" {
  type        = string
  description = "Name of the pre-created Resource Group to import."
}


variable "storage_account_name" {
  type        = string
  description = "Name of the pre-created Storage Account to import."
}


variable "storage_account_tier" {
  type        = string
  description = "Storage Account performance tier."
}

variable "storage_account_replication_type" {
  type        = string
  description = "Storage Account replication type."
}

variable "fd_profile_name" {
  type        = string
  description = "Azure CDN Front Door profile name."
}

variable "fd_profile_sku" {
  type        = string
  description = "Azure CDN Front Door profile SKU."
}

variable "fd_endpoint_name" {
  type        = string
  description = "Azure CDN Front Door endpoint name."
}

variable "fd_origin_group_name" {
  type        = string
  description = "Azure CDN Front Door origin group name."
}

variable "fd_origin_name" {
  type        = string
  description = "Azure CDN Front Door origin name."
}

variable "fd_route_name" {
  type        = string
  description = "Azure CDN Front Door route name."
}
