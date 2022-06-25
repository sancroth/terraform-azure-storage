# Configure the Microsoft Azure Provider
resource "azurerm_resource_group" "rg" {
  name     = "terraform"
  location = "West Europe"
  tags = {
    env        = "terraform"
    source     = "terraform"
    managed-by = "terraform"
    created-by = "nps"
  }
}

resource "azurerm_storage_account" "storage-account-tf" {
  name                     = "terraformblobstoragenps"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_kind             = "BlobStorage"
  account_replication_type = "GRS"
  blob_properties {
    versioning_enabled = true
  }
  tags = {
    env        = "terraform"
    source     = "terraform"
    managed-by = "terraform"
    created-by = "nps"
  }
}

resource "azurerm_storage_container" "storage-account-tf-container" {
  name                  = "terraformstate"
  storage_account_name  = azurerm_storage_account.storage-account-tf.name
  container_access_type = "private"
}