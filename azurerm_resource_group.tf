resource "azurerm_resource_group" "redislabs" {
  name = format("redislabs-%s",random_string.resource_group_name.result)
  location = var.location

  tags = merge( var.tags, { name = "redislabs" } )
}
