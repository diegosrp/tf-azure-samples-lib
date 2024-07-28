<!-- BEGIN_TF_DOCS -->

#### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=3.70.0 |

#### Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.111.0 |

#### Modules

No modules.

#### Resources

| Name | Type |
|------|------|
| [azurerm_network_interface_security_group_association.nic](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface_security_group_association) | resource |
| [azurerm_subnet_network_security_group_association.snet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet_network_security_group_association) | resource |

#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_nsg_associations"></a> [nsg\_associations](#input\_nsg\_associations) | Map to NSG associations | <pre>map(object({<br>    snet_id = optional(string, "")<br>    nsg_id  = string<br>    nic_id  = optional(string, "")<br>  }))</pre> | `{}` | no |

#### Outputs

No outputs.
<!-- END_TF_DOCS -->
