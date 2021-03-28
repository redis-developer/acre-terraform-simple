locals {
  redisgeek_config = {
    cluster  = azurerm_redis_enterprise_cluster.redisgeek.*
    database = azurerm_redis_enterprise_database.redisgeek.*
  }
  sp_display_name = jsondecode(module.azure-base.redisgeek_config).sp
}

output "redisgeek_config" {
  value     = local.redisgeek_config
  sensitive = false
}
