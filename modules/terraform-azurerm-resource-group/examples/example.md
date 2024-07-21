```bash
module "resource_groups" {
  source = "./modules/terraform-azurerm-resource-group"

  resource_groups = {
    # Minimum
    rg-example-dev = {},

    # Complete
    rg-example-prod = {
      location   = "Brazil South"
      managed_by = "terraform"
      tags = {
        environment = "production"
      }
    },

  }
}
```
