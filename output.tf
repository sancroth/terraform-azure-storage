output "storage_account_primary_access_key" {
  value = data.azurerm_storage_account.storage-account-tf.primary_access_key
  sensitive = true
}

output "storage_account_secondary_access_key" {
  value = data.azurerm_storage_account.storage-account-tf.secondary_access_key  
  sensitive = true
}

output "storage_account_primary_connection_string" {
  value = data.azurerm_storage_account.storage-account-tf.primary_connection_string  
  sensitive = true
}
