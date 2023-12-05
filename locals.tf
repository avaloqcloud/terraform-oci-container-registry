locals {
  # Potential resources
  ## Registry
  potential_registry = length(data.oci_artifacts_container_repositories.existing_registry.container_repository_collection[0].items) < 1 ? {
    "resource" = {
      # Required
      compartment_id = var.registry.compartment_id
      display_name   = var.registry.display_name
      # Optional
      defined_tags  = var.registry.defined_tags
      freeform_tags = var.registry.freeform_tags
    }
  } : {}

  # Outputs
  ## Registry
  prep_existing_registry_output = length(data.oci_artifacts_container_repositories.existing_registry.container_repository_collection[0].items) > 0 ? {
    "resource" = {
      billable_size_in_gbs = data.oci_artifacts_container_repositories.existing_registry.container_repository_collection[0].items[0].billable_size_in_gbs
      compartment_id       = data.oci_artifacts_container_repositories.existing_registry.container_repository_collection[0].items[0].compartment_id
      created_by           = data.oci_artifacts_container_repositories.existing_registry.container_repository_collection[0].items[0].created_by
      defined_tags         = data.oci_artifacts_container_repositories.existing_registry.container_repository_collection[0].items[0].defined_tags
      display_name         = data.oci_artifacts_container_repositories.existing_registry.container_repository_collection[0].items[0].display_name
      freeform_tags        = data.oci_artifacts_container_repositories.existing_registry.container_repository_collection[0].items[0].freeform_tags
      id                   = data.oci_artifacts_container_repositories.existing_registry.container_repository_collection[0].items[0].id
      image_count          = data.oci_artifacts_container_repositories.existing_registry.container_repository_collection[0].items[0].image_count
      is_immutable         = data.oci_artifacts_container_repositories.existing_registry.container_repository_collection[0].items[0].is_immutable
      is_public            = data.oci_artifacts_container_repositories.existing_registry.container_repository_collection[0].items[0].is_public
      layer_count          = data.oci_artifacts_container_repositories.existing_registry.container_repository_collection[0].items[0].layer_count
      layers_size_in_bytes = data.oci_artifacts_container_repositories.existing_registry.container_repository_collection[0].items[0].layers_size_in_bytes
      namespace            = data.oci_artifacts_container_repositories.existing_registry.container_repository_collection[0].items[0].namespace
      readme               = data.oci_artifacts_container_repositories.existing_registry.container_repository_collection[0].items[0].readme
      state                = data.oci_artifacts_container_repositories.existing_registry.container_repository_collection[0].items[0].state
      system_tags          = data.oci_artifacts_container_repositories.existing_registry.container_repository_collection[0].items[0].system_tags
      time_created         = data.oci_artifacts_container_repositories.existing_registry.container_repository_collection[0].items[0].time_created
      time_last_pushed     = data.oci_artifacts_container_repositories.existing_registry.container_repository_collection[0].items[0].time_last_pushed
    }
  } : {}
  output_registry = merge(oci_artifacts_container_repository.this, local.prep_existing_registry_output)
}
