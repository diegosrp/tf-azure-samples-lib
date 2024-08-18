variable "private_endpoints" {
  description = "Map to private endpoint configuration"
  type = map(object({
    resource_group_name               = string
    location                          = optional(string)
    subnet_id                         = string
    private_connection_resource_id    = string
    private_connection_resource_alias = optional(string, null)
    subresource_names                 = optional(list(string))
    request_message                   = optional(string)
    is_manual_connection              = optional(bool, false)
    private_dns_zone_group_name       = optional(string, "default")
    private_dns_zone_ids              = optional(list(string), [])
    ip_configurations = optional(list(object({
      name               = string
      private_ip_address = string
      subresource_name   = optional(string)
      member_name        = optional(string)
    })), [])
    tags = optional(map(string))
  }))
}

variable "location" {
  description = "Define which region will be used to create the resource."
  type        = string
  default     = "Australia East"
}
