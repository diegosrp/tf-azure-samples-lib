variable "nsg_associations" {
  description = "Map to NSG associations"
  type = map(object({
    snet_id = optional(string, "")
    nsg_id  = string
    nic_id  = optional(string, "")
  }))
  default = {}
}
