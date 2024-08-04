# output "all_network_security_groups" {
#   description = "Outputs of the network security group created."
#   value       = azurerm_network_security_group.main
# }

output "all_network_security_groups_ids" {
  description = "IDs of the network security group created."
  value = {
    for k, v in azurerm_network_security_group.main :
    k => v.id
  }
}
