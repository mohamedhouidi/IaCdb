output "dbServer_url" {
  value = azurerm_mysql_server.dbserverbanking.name
}

output "dbServer_ips" {
  value = azurerm_mysql_server.dbserverbanking.fqdn
}

output "db_url" {
  value = azurerm_mysql_database.Banking.server_name
}

