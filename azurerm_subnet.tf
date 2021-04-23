resource "azurerm_subnet" "subnet" {
  address_prefixes                               = ["10.0.1.0/24"]
  enforce_private_link_endpoint_network_policies = true
  name                                           = format("redislabs-%s", random_string.subnet_name.result)
  resource_group_name                            = azurerm_resource_group.redislabs.name
  virtual_network_name                           = azurerm_virtual_network.redislabs.name
}
