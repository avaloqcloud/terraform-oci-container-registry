variable "compartment_ocid" {
  type        = string
  description = "The OCID of the compartment."
}

variable "display_name" {
  type        = string
  default     = null
  description = "Container registry name. Format: <namespace>/<container_name>"

  validation {
    condition     = can(regex("^[a-z0-9]+(?:[-][a-z0-9]+)*\\/[a-z0-9]+(?:[-][a-z0-9]+)*$", var.display_name))
    error_message = "The display_name must follow the pattern <namespace>/<container-name> and consists of lowercase letters, numbers, underscores, periods, and hyphens, and are separated by a forward slash"
  }
}

variable "is_public" {
  type        = bool
  default     = false
  description = "Enable public access to the Container Registry"
}

