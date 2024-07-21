resource "azurerm_user_assigned_identity" "main" {
  for_each = var.managed_identities

  resource_group_name = each.value.resource_group_name

  name     = each.key
  location = coalesce(each.value.location, var.location)
  tags     = each.value.tags
}
