```bash
module "private_endpoint" {
  source = "./modules/terraform-azurerm-private-endpoint"

 private_endpoints = {
    st-example-dev = {
      resource_group_name            = module.resource_groups.all_resource_groups_names["rg-example-dev"]
      location                       = module.resource_groups.all_resource_groups_locations["rg-example-dev"]
      subnet_id                      = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-name/providers/Microsoft.Network/virtualNetworks/vnet-name/subnets/subnet-name"
      private_connection_resource_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-name/providers/Microsoft.Storage/storageAccounts/storage-account-name" 
      subresource_names              = ["blob"]
      private_dns_zone_ids           = ["/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-name/providers/Microsoft.Network/privateDnsZones/privatelink.blob.core.windows.net"]
    },

  }
}
```
