output "key_vault_id" {
  description = "The ID of the key vault"
  value       = azurerm_key_vault.this.id

  depends_on = [
    azurerm_role_assignment.keyvault_admin,
    azurerm_role_assignment.keyvault_user_admin,
    azurerm_role_assignment.keyvault_reader
  ]
}

output "name" {
  description = "The name of the key vault"
  value       = azurerm_key_vault.this.name
}

