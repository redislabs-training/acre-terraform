resource "azurerm_storage_account" "redislabs" {
  name = format("redislabs%s", random_string.storage_account_name.result)
  resource_group_name = azurerm_resource_group.redislabs.name
  location = azurerm_resource_group.redislabs.location
  account_tier = "Standard"
  account_replication_type = "LRS"
}
