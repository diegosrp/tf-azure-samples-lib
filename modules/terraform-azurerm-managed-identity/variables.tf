variable "managed_identities" {
  description = "Attributes of the managed identities."
  type = map(object({
    resource_group_name = string
    location            = optional(string)
    tags                = optional(map(string))
  }))
}

variable "location" {
  description = "Define which region will be used to create the resource."
  type        = string
  default     = "Australia East"
}
