variable "network_security_groups" {
  description = "A map of NSGs where each value is a list of rules."
  type = map(object({
    resource_group_name = string
    location            = optional(string)
    security_rules = optional(list(object({
      name                                       = string
      description                                = optional(string)
      priority                                   = number
      direction                                  = string
      access                                     = string
      protocol                                   = string
      source_address_prefix                      = optional(string)
      source_address_prefixes                    = optional(list(string))
      source_application_security_group_ids      = optional(list(string))
      source_port_range                          = optional(string)
      source_port_ranges                         = optional(list(string))
      destination_address_prefix                 = optional(string)
      destination_address_prefixes               = optional(list(string))
      destination_application_security_group_ids = optional(list(string))
      destination_port_range                     = optional(string)
      destination_port_ranges                    = optional(list(string))
    })))
    tags = optional(map(string))
  }))
  default = {}
}

variable "location" {
  description = "Define which region will be used to create the resource."
  type        = string
  default     = "Australia East"
}
