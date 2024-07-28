resource "azurerm_subnet_network_security_group_association" "snet" {
  for_each = { for k, v in var.nsg_associations : k => v if v.snet_id != "" }

  subnet_id                 = each.value.snet_id
  network_security_group_id = each.value.nsg_id
}

resource "azurerm_network_interface_security_group_association" "nic" {
  for_each = { for k, v in var.nsg_associations : k => v if v.nic_id != "" }

  network_interface_id      = each.value.nic_id
  network_security_group_id = each.value.nsg_id
}
