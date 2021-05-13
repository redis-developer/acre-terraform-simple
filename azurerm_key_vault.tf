data "azurerm_key_vault" "redisgeek" {
  name                = random_string.key_vault_name.result
  resource_group_name = azurerm_resource_group.redisgeek.name
  depends_on = [
    azurerm_resource_group_template_deployment.acre
  ]
}