```bash
module "managed_identities" {
  source = "./modules/terraform-azurerm-managed-identity"

  managed_identities = {
    # Minimum
    id-example-dev = {
      resource_group_name = module.resource_groups.all_resource_groups_names["rg-example-dev"]
    },

    # Complete
    id-example-prod = {
      resource_group_name = azurerm_resource_group.example.name
      location            = azurerm_resource_group.example.location
      tags = {
        environment = "production"
      }
    },

  }
}
```
