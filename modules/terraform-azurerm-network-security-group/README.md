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
| [azurerm_network_security_group.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group) | resource |

#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | Define which region will be used to create the resource. | `string` | `"Australia East"` | no |
| <a name="input_network_security_groups"></a> [network\_security\_groups](#input\_network\_security\_groups) | A map of NSGs where each value is a list of rules. | <pre>map(object({<br>    resource_group_name = string<br>    location            = optional(string)<br>    security_rules = optional(list(object({<br>      name                                       = string<br>      description                                = optional(string)<br>      priority                                   = number<br>      direction                                  = string<br>      access                                     = string<br>      protocol                                   = string<br>      source_address_prefix                      = optional(string)<br>      source_address_prefixes                    = optional(list(string))<br>      source_application_security_group_ids      = optional(list(string))<br>      source_port_range                          = optional(string)<br>      source_port_ranges                         = optional(list(string))<br>      destination_address_prefix                 = optional(string)<br>      destination_address_prefixes               = optional(list(string))<br>      destination_application_security_group_ids = optional(list(string))<br>      destination_port_range                     = optional(string)<br>      destination_port_ranges                    = optional(list(string))<br>    })))<br>    tags = optional(map(string))<br>  }))</pre> | `{}` | no |

#### Outputs

| Name | Description |
|------|-------------|
| <a name="output_all_network_security_groups_ids"></a> [all\_network\_security\_groups\_ids](#output\_all\_network\_security\_groups\_ids) | IDs of the network security group created. |
<!-- END_TF_DOCS -->
