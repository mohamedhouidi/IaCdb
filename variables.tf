variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "RG"
}

variable "location" {
  description = "Azure Region"
  type        = string
  default     = "West Europe"
}

variable "mysqlserver_name" {
  description = "Name of the MySQL server"
  type        = string
  default     = "dbserver"
}

variable "admin_username" {
  description = "Admin username for MySQL server"
  type        = string
 
}

variable "admin_password" {
  description = "Admin password for MySQL server"
  type        = string
  
}

variable "mysql_database_name" {
  description = "Name of the MySQL database"
  type        = string
  default     = "QRQC"
}

variable "azure_subscription_id" {}
variable "azure_client_id" {}
variable "azure_client_secret" {}
variable "azure_tenant_id" {}

