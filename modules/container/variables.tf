
variable "container_name" {
  description = "Name of the Docker container"
  type        = string
}

variable "image_id" {
  description = "Docker image identifier"
  type        = string
}

variable "external_port" {
  description = "Port published on the host"
  type        = number
}

variable "network_name" {
  description = "Docker network to attach"
  type        = string
}
