resource "oci_core_internet_gateway" "core_internet_gateways" {
  for_each = var.core_internet_gateways

  compartment_id = each.value.compartment_id
  vcn_id         = each.value.vcn_id
  defined_tags   = each.value.defined_tags
  display_name   = each.value.display_name
  enabled        = each.value.enabled
  freeform_tags  = each.value.freeform_tags
  route_table_id = each.value.route_table_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

