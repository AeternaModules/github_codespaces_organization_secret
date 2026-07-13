variable "codespaces_organization_secrets" {
  description = <<EOT
Map of codespaces_organization_secrets, attributes below
Required:
    - secret_name
    - visibility
Optional:
    - encrypted_value
    - plaintext_value
    - selected_repository_ids
EOT

  type = map(object({
    secret_name             = string
    visibility              = string
    encrypted_value         = optional(string)
    plaintext_value         = optional(string)
    selected_repository_ids = optional(set(number))
  }))
  validation {
    condition = alltrue([
      for k, v in var.codespaces_organization_secrets : (
        v.encrypted_value == null || (can(base64decode(v.encrypted_value)))
      )
    ])
    error_message = "must be valid base64"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

