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
| [azurerm_resource_group.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |

#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | Define which region will be used to create the resource. | `string` | `"Australia East"` | no |
| <a name="input_resource_groups"></a> [resource\_groups](#input\_resource\_groups) | Attributes of the resource group. | <pre>map(object({<br>    location   = optional(string) <br>    managed_by = optional(string)<br>    tags       = optional(map(string))<br>  }))</pre> | n/a | yes |

#### Outputs

| Name | Description |
|------|-------------|
| <a name="output_all_resource_groups_ids"></a> [all\_resource\_groups\_ids](#output\_all\_resource\_groups\_ids) | IDs of the resource group created. |
| <a name="output_all_resource_groups_locations"></a> [all\_resource\_groups\_locations](#output\_all\_resource\_groups\_locations) | LOCATIONs of the resource group created. |
| <a name="output_all_resource_groups_names"></a> [all\_resource\_groups\_names](#output\_all\_resource\_groups\_names) | NAMEs of the resource group created. |
<!-- END_TF_DOCS -->
