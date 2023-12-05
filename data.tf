# Data lookups of existing resources
## Container registry
data "oci_artifacts_container_repositories" "existing_registry" {
  # Required
  compartment_id = var.registry.compartment_id

  # Filter - Important; Filter should be so that only ever one gets returned.
  filter {
    name   = "display_name"
    values = ["${var.registry.display_name}"]
  }
}

