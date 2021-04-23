resource "azurerm_virtual_network" "redislabs" {
  name                = format("redislabs-%s", random_string.vnet_name.result)
  depends_on          = [azurerm_resource_group.redislabs]
  resource_group_name = azurerm_resource_group.redislabs.name
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.redislabs.location
}
