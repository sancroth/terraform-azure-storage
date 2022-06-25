data "azurerm_storage_account" "storage-account-tf" {
  name                = azurerm_storage_account.storage-account-tf.name
  resource_group_name = azurerm_resource_group.rg.name
}

