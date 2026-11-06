terraform {
  required_version = ">= 1.5.0"

  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 4.2.0"
    }
  }

  cloud {
    organization = "grizzleyban-terraform"

    workspaces {
      name = "capstone-staging"
    }
  }
}
provider "docker" {}
