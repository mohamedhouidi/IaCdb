provider "azurerm" {
  features {}
  subscription_id = "df32ccf3-dd19-4bd6-9ee8-d979f885c86b"
  tenant_id       = "3a124467-eeb2-47ab-9f1d-0c1def6aad3c"
  client_id       = "e19bc169-bc77-4f13-8d31-624e3a7fe837"
  client_secret   = "YWi8Q~UFqGJAVN45ZQFfZO1QZvGBw_TqWAK4ydbK"
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.6.0"
    }
  }
}
