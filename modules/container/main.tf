
resource "docker_container" "main" {
  name  = var.container_name
  image = var.image_id

  ports {
    internal = 80
    external = var.external_port
  }

  networks_advanced {
    name = var.network_name
  }
}
