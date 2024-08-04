resource "azurerm_network_security_group" "main" {
  for_each = var.network_security_groups

  resource_group_name = each.value.resource_group_name

  name     = each.key
  location = coalesce(each.value.location, var.location)

  dynamic "security_rule" {
    for_each = coalesce(each.value.security_rules, [])

    content {
      name                                       = security_rule.value.name
      description                                = security_rule.value.description
      priority                                   = security_rule.value.priority
      direction                                  = security_rule.value.direction
      access                                     = security_rule.value.access
      protocol                                   = security_rule.value.protocol
      source_address_prefix                      = security_rule.value.source_address_prefix
      source_address_prefixes                    = security_rule.value.source_address_prefixes
      source_application_security_group_ids      = security_rule.value.source_application_security_group_ids
      source_port_range                          = security_rule.value.source_port_range
      source_port_ranges                         = security_rule.value.source_port_ranges
      destination_address_prefix                 = security_rule.value.destination_address_prefix
      destination_address_prefixes               = security_rule.value.destination_address_prefixes
      destination_application_security_group_ids = security_rule.value.destination_application_security_group_ids
      destination_port_range                     = security_rule.value.destination_port_range
      destination_port_ranges                    = security_rule.value.destination_port_ranges
    }
  }

  tags = each.value.tags
}
