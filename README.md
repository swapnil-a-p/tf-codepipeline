# tf-codepipeline

A minimal Terraform sandbox for AWS provider setup, S3-backed remote state configuration, and basic resource provisioning.

This repository is intentionally small. It is best understood as an infrastructure practice project used to validate Terraform workflow basics rather than a full reusable module set.

## What It Currently Does

The current configuration includes:

- AWS provider setup
- S3 backend configuration for Terraform state
- a simple S3 bucket resource

## Files

- `provider.tf` — Terraform provider and backend configuration
- `main.tf` — example AWS resource definition
- `sample.txt` — placeholder file from the original sandbox

## Tech Stack

- Terraform
- AWS
- S3 remote state backend

## Usage

Initialize Terraform:

```bash
terraform init
```

Preview changes:

```bash
terraform plan
```

Apply changes:

```bash
terraform apply
```

## Important Notes

This repository contains hard-coded example bucket names and backend settings. Before using it in a real AWS account, you should:

- replace bucket names with your own
- parameterize configuration with variables
- avoid committing environment-specific values
- review backend bucket and state key naming
- confirm IAM permissions for Terraform execution

## Why This Repo Exists

This repo is a small learning and experimentation project for:

- AWS provider setup
- remote state configuration
- basic Terraform resource provisioning
- validating Terraform command flow

## Suggested Next Improvements

- add `variables.tf`
- add `outputs.tf`
- document the intended AWS architecture
- replace placeholder values with reusable variable-driven inputs
