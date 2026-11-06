
output "production_url" {
  description = "Local URL of the production-style application"
  value       = "http://localhost:${var.external_port}"
}

output "production_container_name" {
  description = "Name of the production container"
  value       = module.container.container_name
}
output "production_container_id" {
  description = "ID of the production container"
  value       = module.container.container_id
}