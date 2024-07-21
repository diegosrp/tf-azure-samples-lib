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
| [azurerm_user_assigned_identity.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/user_assigned_identity) | resource |

#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | Define which region will be used to create the resource. | `string` | `"Australia East"` | no |
| <a name="input_managed_identities"></a> [managed\_identities](#input\_managed\_identities) | Attributes of the managed identities. | <pre>map(object({<br>    resource_group_name = string<br>    location            = optional(string)<br>    tags                = optional(map(string))<br>  }))</pre> | n/a | yes |

#### Outputs

| Name | Description |
|------|-------------|
| <a name="output_all_managed_identity_client_ids"></a> [all\_managed\_identity\_client\_ids](#output\_all\_managed\_identity\_client\_ids) | CLIENT IDs of the managed identity created. |
| <a name="output_all_managed_identity_ids"></a> [all\_managed\_identity\_ids](#output\_all\_managed\_identity\_ids) | IDs of the managed identity created. |
| <a name="output_all_managed_identity_principal_ids"></a> [all\_managed\_identity\_principal\_ids](#output\_all\_managed\_identity\_principal\_ids) | PRINCIPAL IDs of the managed identity created. |
<!-- END_TF_DOCS -->
