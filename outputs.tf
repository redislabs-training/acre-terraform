locals {
  redislabs_config = {
    cluster = azurerm_redis_enterprise_cluster.redislabs.*
    database = azurerm_redis_enterprise_database.redislabs.*
  }
}

output "redislabs_config" {
  value = jsonencode(local.redislabs_config)
  sensitive = true
}
