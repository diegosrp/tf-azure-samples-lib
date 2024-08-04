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
          name                       = "AllowInboundExample"
          description                = "Example rule to allow inbound traffic."
          priority                   = 120
          direction                  = "Inbound"
          access                     = "Allow"
          protocol                   = "Tcp"
          source_address_prefix      = "VirtualNetwork"
          source_port_range          = "5701"
          destination_address_prefix = "VirtualNetwork"
          destination_port_range     = "8080"
        },
        {
          name                       = "AllowInboundExample2"
          description                = "Example rule to allow inbound traffic."
          priority                   = 130
          direction                  = "Inbound"
          access                     = "Allow"
          protocol                   = "Tcp"
          source_address_prefix      = "VirtualNetwork"
          source_port_range          = "5500"
          destination_address_prefix = "VirtualNetwork"
          destination_port_range     = "8181"
        },

      ],
      tags = {
        environment = "production"
      },

  }
}
```
