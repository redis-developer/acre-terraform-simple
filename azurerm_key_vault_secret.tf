data "azurerm_key_vault_secret" "primaryKey" {
  name         = random_string.secret_name.result
  key_vault_id = data.azurerm_key_vault.redisgeek.id
  depends_on = [data.azurerm_key_vault.redisgeek]
}