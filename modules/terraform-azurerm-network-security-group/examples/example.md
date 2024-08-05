```bash
module "network_security_groups" {
  source = "./modules/terraform-azurerm-network-security-group"

  network_security_groups = {
    # Minimum
    nsg-example-dev = {
      resource_group_name = module.resource_groups.all_resource_groups_names["rg-example-dev"]
    },

    # Using Security rules
    nsg-example-prod = {
      resource_group_name = module.resource_groups.all_resource_groups_names["rg-example-prod"]
      security_rules = [
        {
          name                         = "AllowInboundExample"
          priority                     = 120
          direction                    = "Inbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          destination_port_range       = "443"
          source_address_prefix        = "Internet"
          destination_address_prefix   = "*"
        },
        {
          name                         = "AllowOutboundExample"
          priority                     = 130
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "*"
          source_port_range            = "*"
          destination_port_ranges      = ["5701", "8080"]
          source_address_prefix        = "VirtualNetwork"
          destination_address_prefix   = "VirtualNetwork"
        },

      ],
      tags = {
        environment = "production"
      },

  }
}
```
