variable "resource_groups" {
  description = "Attributes of the resource group."
  type = map(object({
    location   = optional(string)
    managed_by = optional(string)
    tags       = optional(map(string))
  }))
}

variable "location" {
  description = "Define which region will be used to create the resource."
  type        = string
  default     = "Australia East"
}