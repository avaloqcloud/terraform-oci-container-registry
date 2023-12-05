output "registry" {
  value       = local.output_registry["resource"] # flatten using static map key
  description = "Registry output object"
}

