# Terraform Multi-Environment Infrastructure

A hands-on Infrastructure as Code (IaC) project demonstrating how Terraform can provision and manage isolated development, staging, and production-style Docker environments using reusable modules.

## Project Overview

This project demonstrates modular infrastructure design, environment-specific configuration, infrastructure lifecycle management, and Terraform state isolation.

The infrastructure is deployed locally using Docker and Terraform.

## Architecture

```text
terraform-multi-environment-infrastructure/
├── modules/
│   ├── network/
│   └── container/
│
├── environments/
│   ├── dev/
│   ├── staging/
│   └── production/
│
├── .gitignore
└── README.md
```

Each environment uses the same Terraform modules but maintains its own configuration and state.

## Technologies I Used

- Terraform — Infrastructure as Code
- Docker — Container runtime
- Nginx — Web server
- Git and GitHub — Version control

## Infrastructure Configuration

| Environment | Container | Network | Host Port |
|---|---|---|---|
| Development | capstone-dev-nginx | capstone-dev-network | 8181 |
| Staging | capstone-staging-nginx | capstone-staging-network | 8282 |
| Production-style | capstone-prod-nginx | capstone-prod-network | 8383 |

## Terraform Modules

### Network Module

Creates Docker networks using environment-specific inputs and exports the network name for use by other modules.

### Container Module

Creates Docker containers using configurable container names, image IDs, external ports, and network names.

## Infrastructure Management

Each environment is managed independently from its own Terraform root directory.

Example deployment:

```bash
cd environments/dev
terraform init
terraform validate
terraform plan
terraform apply
```

Test the development application:

```bash
curl -I http://localhost:8181
```

To deploy staging or production-style infrastructure, navigate into the corresponding environment directory and follow the same Terraform workflow.

**Prerequisites:** Terraform, Docker with a running Docker daemon, and Git.

## State Management

Each environment currently uses a separate local Terraform state file.

State separation allows Terraform to manage each environment independently.

State files are excluded from version control because they can contain sensitive information.

## Skills Demonstrated

- Infrastructure as Code using Terraform
- Reusable Terraform module development
- Environment-specific infrastructure configuration
- Terraform variables and outputs
- Resource dependencies and lifecycle management
- Terraform state management
- Docker networking and container provisioning
- Infrastructure validation and deployment workflows

## Future Improvements

- Remote state backend configuration
- Remote state locking
- GitHub Actions CI/CD pipelines
- Automated Terraform formatting and validation
- Production approval workflows
- Security and policy checks

## Project Status

Development and staging deployments have been verified locally. Production-style infrastructure has been configured, with deployment verification pending.

Remote state and CI/CD are planned improvements.

## Author

My Humble self Grizzleyban
