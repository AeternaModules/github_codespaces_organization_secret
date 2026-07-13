resource "github_codespaces_organization_secret" "codespaces_organization_secrets" {
  for_each = var.codespaces_organization_secrets

  secret_name             = each.value.secret_name
  visibility              = each.value.visibility
  encrypted_value         = each.value.encrypted_value
  plaintext_value         = each.value.plaintext_value
  selected_repository_ids = each.value.selected_repository_ids
}

