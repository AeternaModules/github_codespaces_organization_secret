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
  # --- Unconfirmed validation candidates, derived from github_codespaces_organization_secret's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: secret_name
  #   source:    validateSecretNameFunc: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: encrypted_value
  #   source:    validation.StringIsBase64(...) - no translation rule yet, add one
  # path: visibility
  #   source:    validateValueFunc: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
}

