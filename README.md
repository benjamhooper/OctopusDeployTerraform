# Octopus Deploy Terraform

## Prerequisite

1. Docker
1. Terraform CLI

(Optional) Remote backend store for Terraform state

## Setup

Initial setup of Octopus Deploy

1. Make sure `.env` are setup to your liking
1. `docker compose up -d`
1. Initialize Terraform `terraform init`
1. Import Terraform state from either cloud or local docker container
1. Edit `main.tf` to your tentacles' desire ;)
1. `terraform plan` for verify
1. `terraform apply` for provisiong your infra
