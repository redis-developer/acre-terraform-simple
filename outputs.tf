locals {
  redisgeek_config = {
    cluster  = azurerm_redis_enterprise_cluster.redisgeek.*
    database = azurerm_redis_enterprise_database.redisgeek.*
  }
  secrets = {
    keyVaultName = random_string.key_vault_name.result
    secretName = random_string.secret_name.result
  }
  sp_display_name = jsondecode(module.azure-base.redisgeek_config).sp
  object_id = jsondecode(module.azure-base.redisgeek_config).oid
}

output "redisgeek_config" {
  value     = local.redisgeek_config
  sensitive = false
}

output "secrets" {
  value = local.secrets
  sensitive = false
}
