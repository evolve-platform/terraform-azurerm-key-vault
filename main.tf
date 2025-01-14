resource "azurerm_key_vault" "this" {
  name                        = var.name
  location                    = var.location
  resource_group_name         = var.resource_group_name
  enabled_for_disk_encryption = true
  enable_rbac_authorization   = true
  tenant_id                   = var.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false
  tags                        = var.tags

  # TODO:
  # public_network_access_enabled = false
  # network_acls {
  #   bypass                     = "AzureServices"
  #   default_action             = "Deny"
  #   virtual_network_subnet_ids = [azurerm_subnet.primary.id]
  # }

  sku_name = "standard"
}


resource "azurerm_role_assignment" "keyvault_admin" {
  for_each = var.management_principals

  scope                = azurerm_key_vault.this.id
  role_definition_name = "Key Vault Administrator"
  principal_id         = each.value
}

resource "azurerm_role_assignment" "keyvault_user_admin" {
  for_each = var.management_principals

  scope                = azurerm_key_vault.this.id
  role_definition_name = "User Access Administrator"
  principal_id         = each.value
}

resource "azurerm_role_assignment" "keyvault_reader" {
  for_each = var.reader_principals

  scope                = azurerm_key_vault.this.id
  role_definition_name = "Key Vault Secrets User"
  principal_id         = each.value
}
