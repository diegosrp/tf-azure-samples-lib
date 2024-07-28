```bash
module "network_security_groups_association" {
  source = "./modules/terraform-azurerm-network-security-group-association"

  nsg_associations = {
    snet-nsg-example-dev = {
      snet_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-name/providers/Microsoft.Network/virtualNetworks/vnet-name/subnets/subnet-name"
      nsg_id    = module.network_security_groups.all_network_security_groups_ids["nsg-example-dev"]
    },

    nic-nsg-example-dev = {
      nic_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-name/providers/Microsoft.Network/networkInterfaces/network-interface-name"
      nsg_id    = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-name/providers/Microsoft.Network/networkSecurityGroups/nsg-name"
    },
  }
}
```
