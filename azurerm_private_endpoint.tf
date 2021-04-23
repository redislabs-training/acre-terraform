resource "azurerm_private_endpoint" "acre" {
  name                = format("redislabs-%s", random_string.private_link_name.result)
  location            = azurerm_resource_group.redislabs.location
  resource_group_name = azurerm_resource_group.redislabs.name
  subnet_id           = azurerm_subnet.subnet.id

  private_service_connection {
    name                           = format("redislabs-sc-%s", random_string.private_link_name.result)
    private_connection_resource_id = azurerm_redis_enterprise_cluster.redislabs.id
    is_manual_connection           = false
    subresource_names              = ["redisEnterprise"]
  }
}
