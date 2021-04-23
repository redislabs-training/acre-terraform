resource "azurerm_storage_container" "redislabs" {
  name                  = format("%s%s",random_string.storage_account_name.result, random_string.storage_container_name.result)
  storage_account_name  = azurerm_storage_account.redislabs.name
  container_access_type = "private"
}
