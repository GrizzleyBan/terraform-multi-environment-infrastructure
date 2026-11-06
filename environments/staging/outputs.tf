output "staging_url" {
  description = "URL of the staging application"
  value       = "http://localhost:${var.external_port}"
}
