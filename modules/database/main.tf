resource "azurerm_sql_database" "database" {
  name                = var.db_name
  resource_group_name = var.resource_group_name
  location            = var.location
  server_name         = var.server_name

  # Additional configurations...
}

output "db_id" {
  value = azurerm_sql_database.database.id
}