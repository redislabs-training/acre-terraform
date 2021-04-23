resource "azurerm_redis_enterprise_database" "redislabs" {
  name = "default"
  resource_group_name = azurerm_resource_group.redislabs.name
  cluster_id = azurerm_redis_enterprise_cluster.redislabs.id
  clustering_policy = var.azure_redis_enterprise_database_clustering_policy
  module {
    name = "RediSearch"
  }
}
