output "development_url" {
  value = "http://localhost:${var.external_port}"
}

output "development_container_id" {
  value = module.container.container_id
}


