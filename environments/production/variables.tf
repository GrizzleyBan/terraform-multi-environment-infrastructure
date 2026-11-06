
variable "container_name" {
  description = "Production Docker container name"
  type        = string
  default     = "capstone-prod-nginx"
}

variable "network_name" {
  description = "Production Docker network name"
  type        = string
  default     = "capstone-prod-network"
}

variable "external_port" {
  description = "Host port for the production application"
  type        = number
  default     = 8383

  validation {
    condition     = var.external_port >= 1024 && var.external_port <= 65535
    error_message = "The external port must be between 1024 and 65535."
  }
}
