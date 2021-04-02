resource "azurerm_resource_group_template_deployment" "acre" {
  name                = format("redisgeek-%s", random_string.acre_name.result)
  resource_group_name = azurerm_resource_group.redisgeek.name
  deployment_mode     = var.deployment_mode
  template_content = templatefile("${path.module}/ARM/keyvault.json", {
    clusterName              = azurerm_redis_enterprise_cluster.redisgeek.name,
    objectId = local.object_id,
    servicePrincipalObjectId = var.client_id,
    keyVaultName             = random_string.key_vault_name.result,
    secretName               = random_string.secret_name.result
  })
  depends_on = [azurerm_redis_enterprise_database.redisgeek]
  tags       = merge(var.tags, { owner = local.sp_display_name })
}
