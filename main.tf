resource "azurerm_resource_group" "bankingRG" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_mysql_server" "dbserverbanking" {
  name                = var.mysqlserver_name
  location            = azurerm_resource_group.bankingRG.location
  resource_group_name = azurerm_resource_group.bankingRG.name
  sku_name            = "B_Gen5_2" 
  version             = "5.7"     

  
  administrator_login          = var.admin_username
  administrator_login_password = var.admin_password
  
  
  # auto_grow_enabled                 = true
  # backup_retention_days             = 7
  # geo_redundant_backup_enabled      = false
  # infrastructure_encryption_enabled = false
  # public_network_access_enabled     = true
  # ssl_enforcement_enabled           = true
  # ssl_minimal_tls_version_enforced  = "TLS1_2"

  ssl_enforcement_enabled           = true
  public_network_access_enabled     = true
  ssl_minimal_tls_version_enforced  = "TLS1_2"
  

    
}
resource "azurerm_mysql_firewall_rule" "rulesformysql" {
  name                = "office"
  resource_group_name = azurerm_resource_group.bankingRG.name
  server_name         = azurerm_mysql_server.dbserverbanking.name
  start_ip_address    = "0.0.0.0"
  end_ip_address      = "255.255.255.255"
}

resource "azurerm_mysql_database" "Banking" {
  name                = var.mysql_database_name
  resource_group_name = azurerm_resource_group.bankingRG.name
  server_name         = azurerm_mysql_server.dbserverbanking.name
  charset             = "utf8"
  collation           = "utf8_unicode_ci"
  
  
  
}
