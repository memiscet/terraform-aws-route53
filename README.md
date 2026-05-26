# terraform-aws-route53

Reusable Terraform module for CPAL Route53 records and hosted zone patterns.

## Requirements

- Terraform >= 1.6.0
- AWS provider >= 5.0

## Providers

- aws

## Inputs

- See `variables.tf`.

## Outputs

- See `outputs.tf`.

## Resources

- See `main.tf`.

## Examples

- Inline examples in this README and future `examples/`.

## Shared CI/CD Model

- Wrapper workflows live in `.github/workflows/terraform-plan.yml` and `.github/workflows/terraform-apply.yml`.
- Pipelines call reusable templates from `cpal/cpal-github-actions-iac-templates`.
- Governance checks (permission boundaries, DR/site validation, OIDC, security scan, docs) are enforced centrally.
