resource "oci_artifacts_container_repository" "this" {
  for_each = local.potential_registry
  # Required
  compartment_id = each.value.compartment_id
  display_name   = each.value.display_name
  # Optional
  defined_tags  = each.value.defined_tags
  freeform_tags = each.value.freeform_tags
}

