# output "all_managed_identities" {
#   description = "Outputs of the managed identity created."
#   value       = azurerm_user_assigned_identity.main
#   sensitive   = true
# }

output "all_managed_identity_ids" {
  description = "IDs of the managed identity created."
  value = {
    for k, v in azurerm_user_assigned_identity.main :
    k => v.id
  }
}

output "all_managed_identity_principal_ids" {
  description = "PRINCIPAL IDs of the managed identity created."
  value = {
    for k, v in azurerm_user_assigned_identity.main :
    k => v.principal_id
  }
  sensitive = true
}

output "all_managed_identity_client_ids" {
  description = "CLIENT IDs of the managed identity created."
  value = {
    for k, v in azurerm_user_assigned_identity.main :
    k => v.client_id
  }
  sensitive = true
}
