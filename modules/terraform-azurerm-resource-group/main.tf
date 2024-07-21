resource "azurerm_resource_group" "main" {
  for_each = var.resource_groups

  name       = each.key
  location   = coalesce(each.value.location, var.location)
  managed_by = each.value.managed_by
  tags       = each.value.tags
}
