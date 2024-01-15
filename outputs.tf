output "dbServer_url" {
  value = azurerm_mysql_server.dbserverQRQC.name
}

output "dbServer_ips" {
  value = azurerm_mysql_server.dbserverQRQC.fqdn
}

output "db_url" {
  value = azurerm_mysql_database.QRQC.server_name
}

