output "key_vault_id" {
  value = azurerm_key_vault.this.id

  depends_on = [
    azurerm_role_assignment.keyvault_admin,
    azurerm_role_assignment.keyvault_user_admin,
    azurerm_role_assignment.keyvault_reader
  ]
}
