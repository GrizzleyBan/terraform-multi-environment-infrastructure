variable "container_name" {
  description = "Name of the development container"
  type        = string
  default     = "capstone-dev-nginx"
}

variable "external_port" {
  description = "Host port for the development application"
  type        = number
  default     = 8181
}

variable "network_name" {
  description = "Docker network name"
  type        = string
  default     = "capstone-dev-network"
}