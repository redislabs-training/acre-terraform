resource "azurerm_redis_enterprise_cluster" "redislabs" {
  name                = format("redislabs-%s", random_string.redis_enterprise_name.result)
  resource_group_name = azurerm_resource_group.redislabs.name
  location            = azurerm_resource_group.redislabs.location
  zones               = [1,2,3]
  sku_name = var.acre_sku
}
