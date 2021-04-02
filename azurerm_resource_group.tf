resource "azurerm_resource_group" "redisgeek" {
  name     = format("redisgeek-%s", random_string.resource_group_name.result)
  location = random_shuffle.redisgeek.result[0]
  tags     = merge(var.tags, { owner = local.sp_display_name })
}
