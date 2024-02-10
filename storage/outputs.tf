output "storage_account_name" {
  description = "The Storage Account Name."
  value       = azurerm_storage_account.storage.name
}

output "storage_container_name" {
  description = "The Storage Container Name."
  value       = azurerm_storage_container.container.name
}
