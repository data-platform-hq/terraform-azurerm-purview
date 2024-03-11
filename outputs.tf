output "id" {
  description = "The ID of Purview Account"
  value       = azurerm_purview_account.this.id
}

output "principal_id" {
  description = "The Principal ID of Purview Account"
  value       = azurerm_purview_account.this.identity
}
