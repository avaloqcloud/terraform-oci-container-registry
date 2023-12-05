variable "registry" {
  description = "Registry input object"
  type = object({
    # Required
    compartment_id = string,
    display_name   = string,
    # Optional
    defined_tags  = optional(map(string)),
    freeform_tags = optional(map(string)),
  })
}

