resource "azurerm_resource_group" "terraform_resource_group" {
  name     = "terraformresources09145"
  location = "West Europe"
}

resource "azurerm_storage_account" "terraform_storage_account" {
  name                = "storageterraformbvss1"
  resource_group_name = azurerm_resource_group.terraform_resource_group.name
  location                 = azurerm_resource_group.terraform_resource_group.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}