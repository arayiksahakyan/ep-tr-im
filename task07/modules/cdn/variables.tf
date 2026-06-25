variable "resource_group_name" {
  type        = string
  description = "Name of the Resource Group where Azure CDN Front Door resources will be created."
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

variable "storage_blob_host" {
  type        = string
  description = "Primary blob host of the imported Storage Account."
}
