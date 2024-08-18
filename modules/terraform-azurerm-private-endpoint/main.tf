resource "azurerm_private_endpoint" "main" {
  for_each = var.private_endpoints

  resource_group_name           = each.value.resource_group_name
  location                      = coalesce(each.value.location, var.location)
  name                          = "pep-${each.key}"
  subnet_id                     = each.value.subnet_id
  custom_network_interface_name = "nic-pep-${each.key}"

  private_service_connection {
    name                              = "connection-pep-${each.key}"
    is_manual_connection              = each.value.is_manual_connection
    private_connection_resource_id    = each.value.private_connection_resource_alias != null ? null : each.value.private_connection_resource_id
    private_connection_resource_alias = each.value.private_connection_resource_alias
    subresource_names                 = each.value.subresource_names
    request_message                   = each.value.is_manual_connection && each.value.request_message != null ? each.value.request_message : null
  }

  dynamic "private_dns_zone_group" {
    for_each = length(each.value.private_dns_zone_ids) > 0 ? [1] : []

    content {
      name                 = each.value.private_dns_zone_group_name != null ? each.value.private_dns_zone_group_name : "default"
      private_dns_zone_ids = each.value.private_dns_zone_ids
    }
  }

  dynamic "ip_configuration" {
    for_each = length(each.value.ip_configurations) > 0 ? each.value.ip_configurations : []

    content {
      name               = ip_configuration.value.name
      private_ip_address = ip_configuration.value.private_ip_address
      subresource_name   = ip_configuration.value.subresource_name != null ? ip_configuration.value.subresource_name : each.value.subresource_names[0]
      member_name        = ip_configuration.value.member_name != null ? ip_configuration.value.member_name : ip_configuration.value.subresource_name
    }
  }

  tags = each.value.tags
}
