# output "all_resource_groups" {
#   description = "Outputs of the resource group created."
#   value       = azurerm_resource_group.main
# }

output "all_resource_groups_names" {
  description = "NAMEs of the resource group created."
  value = {
    for k, v in azurerm_resource_group.main :
    k => v.name
  }
}

output "all_resource_groups_locations" {
  description = "LOCATIONs of the resource group created."
  value = {
    for k, v in azurerm_resource_group.main :
    k => v.location
  }
}

output "all_resource_groups_ids" {
  description = "IDs of the resource group created."
  value = {
    for k, v in azurerm_resource_group.main :
    k => v.id
  }
}
