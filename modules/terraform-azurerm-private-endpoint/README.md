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
| [azurerm_private_endpoint.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_endpoint) | resource |

#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | Define which region will be used to create the resource. | `string` | `"Australia East"` | no |
| <a name="input_private_endpoints"></a> [private\_endpoints](#input\_private\_endpoints) | Map to private endpoint configuration | <pre>map(object({<br>    resource_group_name               = string<br>    location                          = optional(string)<br>    subnet_id                         = string<br>    private_connection_resource_id    = string<br>    private_connection_resource_alias = optional(string, null)<br>    subresource_names                 = optional(list(string))<br>    request_message                   = optional(string)<br>    is_manual_connection              = optional(bool, false)<br>    private_dns_zone_group_name       = optional(string, "default")<br>    private_dns_zone_ids              = optional(list(string), [])<br>    ip_configurations = optional(list(object({<br>      name               = string<br>      private_ip_address = string<br>      subresource_name   = optional(string)<br>      member_name        = optional(string)<br>    })), [])<br>    tags = optional(map(string))<br>  }))</pre> | n/a | yes |

#### Outputs

No outputs.
<!-- END_TF_DOCS -->
