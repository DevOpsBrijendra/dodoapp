resource "azurerm_resource_group" "rg1" {
  name     = "dodo-resource"
  location = "West Europe"
}
resource "azurerm_storage_account" "storage1" {
  name                     = "examplestorageaccount"
  resource_group_name      = azurerm_resource_group.rg1.name
  location                 = azurerm_resource_group.rg1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}