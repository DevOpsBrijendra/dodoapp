resource "azurerm_resource_group" "rg1" {
  name     = "dodo_resource_group"
  location = "Central India"
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
