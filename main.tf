# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  cloud {
    organization = "sancroth1"

    workspaces {
      name = "learn"
    }
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

data "azurerm_storage_account" "storage-account-tf" {
  name                = azurerm_storage_account.storage-account-tf.name
  resource_group_name = azurerm_resource_group.rg.name
}

