resource "azurerm_key_vault" "vault" {
  name                       = "${var.resource_name_prefix}-kv"
  location                   = azurerm_resource_group.app_rg.location
  resource_group_name        = azurerm_resource_group.app_rg.name
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  sku_name                   = var.sku_name
  soft_delete_retention_days = 7
  purge_protection_enabled   = true

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = local.current_user_id

    key_permissions    = var.key_permissions
    secret_permissions = var.secret_permissions
  }

  network_acls {
    bypass         = "AzureServices"
    default_action = "Deny"
  }

  tags = var.default_tags
}

data "azurerm_client_config" "current" {}

locals {
  current_user_id = coalesce(var.msi_id, data.azurerm_client_config.current.object_id)
}
