import {
  to = azurerm_resource_group.imported
  id = "/subscriptions/13f2946a-14ab-4ea3-8715-7968ca4f5c61/resourceGroups/cmtr-2gvu1fsw-mod7-rg"
}

import {
  to = azurerm_storage_account.imported
  id = "/subscriptions/13f2946a-14ab-4ea3-8715-7968ca4f5c61/resourceGroups/cmtr-2gvu1fsw-mod7-rg/providers/Microsoft.Storage/storageAccounts/cmtr2gvu1fswmod7sa"
}

resource "azurerm_resource_group" "imported" {
  name     = var.resource_group_name
  location = var.location

  lifecycle {
    ignore_changes = all
  }
}

resource "azurerm_storage_account" "imported" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.imported.name
  location                 = azurerm_resource_group.imported.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type

  lifecycle {
    ignore_changes = all
  }
}

module "cdn" {
  source = "./modules/cdn"

  resource_group_name = azurerm_resource_group.imported.name

  fd_profile_name      = var.fd_profile_name
  fd_profile_sku       = var.fd_profile_sku
  fd_endpoint_name     = var.fd_endpoint_name
  fd_origin_group_name = var.fd_origin_group_name
  fd_origin_name       = var.fd_origin_name
  fd_route_name        = var.fd_route_name

  storage_blob_host = local.storage_blob_host
}
