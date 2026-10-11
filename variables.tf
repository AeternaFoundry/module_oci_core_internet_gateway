variable "core_internet_gateways" {
  description = <<EOT
Map of core_internet_gateways, attributes below
Required:
    - compartment_id
    - vcn_id
Optional:
    - defined_tags
    - display_name
    - enabled
    - freeform_tags
    - route_table_id
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id = string
    vcn_id         = string
    defined_tags   = optional(map(string))
    display_name   = optional(string)
    enabled        = optional(bool)
    freeform_tags  = optional(map(string))
    route_table_id = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

