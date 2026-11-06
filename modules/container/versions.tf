terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = ">= 4.2.0, < 5.0.0"
    }
  }
}