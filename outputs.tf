output "codespaces_organization_secrets_id" {
  description = "Map of id values across all codespaces_organization_secrets, keyed the same as var.codespaces_organization_secrets"
  value       = { for k, v in github_codespaces_organization_secret.codespaces_organization_secrets : k => v.id }
}
output "codespaces_organization_secrets_created_at" {
  description = "Map of created_at values across all codespaces_organization_secrets, keyed the same as var.codespaces_organization_secrets"
  value       = { for k, v in github_codespaces_organization_secret.codespaces_organization_secrets : k => v.created_at }
}
output "codespaces_organization_secrets_encrypted_value" {
  description = "Map of encrypted_value values across all codespaces_organization_secrets, keyed the same as var.codespaces_organization_secrets"
  value       = { for k, v in github_codespaces_organization_secret.codespaces_organization_secrets : k => v.encrypted_value }
  sensitive   = true
}
output "codespaces_organization_secrets_plaintext_value" {
  description = "Map of plaintext_value values across all codespaces_organization_secrets, keyed the same as var.codespaces_organization_secrets"
  value       = { for k, v in github_codespaces_organization_secret.codespaces_organization_secrets : k => v.plaintext_value }
  sensitive   = true
}
output "codespaces_organization_secrets_secret_name" {
  description = "Map of secret_name values across all codespaces_organization_secrets, keyed the same as var.codespaces_organization_secrets"
  value       = { for k, v in github_codespaces_organization_secret.codespaces_organization_secrets : k => v.secret_name }
}
output "codespaces_organization_secrets_selected_repository_ids" {
  description = "Map of selected_repository_ids values across all codespaces_organization_secrets, keyed the same as var.codespaces_organization_secrets"
  value       = { for k, v in github_codespaces_organization_secret.codespaces_organization_secrets : k => v.selected_repository_ids }
}
output "codespaces_organization_secrets_updated_at" {
  description = "Map of updated_at values across all codespaces_organization_secrets, keyed the same as var.codespaces_organization_secrets"
  value       = { for k, v in github_codespaces_organization_secret.codespaces_organization_secrets : k => v.updated_at }
}
output "codespaces_organization_secrets_visibility" {
  description = "Map of visibility values across all codespaces_organization_secrets, keyed the same as var.codespaces_organization_secrets"
  value       = { for k, v in github_codespaces_organization_secret.codespaces_organization_secrets : k => v.visibility }
}

