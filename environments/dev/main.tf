resource "docker_image" "nginx" {
  name         = "nginx:alpine"
  keep_locally = true
}
module "network" {
  source = "../../modules/network"

  network_name = var.network_name
}


module "container" {
  source = "../../modules/container"

  container_name = var.container_name
  image_id       = docker_image.nginx.image_id
  external_port  = var.external_port
  network_name   = module.network.network_name
}
