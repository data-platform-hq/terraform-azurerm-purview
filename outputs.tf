output "id" {
  value = azurerm_purview_account.this.id
}

output "principal_id" {
  value = azurerm_purview_account.this.identity
}
