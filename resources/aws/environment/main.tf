terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.59.0"
    }
  }

  required_version = ">= 1.2.0"
}

module "environment_on_aws" {
  source = "git::https://github.com/dashg-enterprises/cloud-platform.git//modules/environment/aws?ref=main"
  organization_name = "DashG"
  domain_name = "dashglabs.com"
  bounded_contexts = local.bounded_contexts
  environment_name = var.environment_name
  environment_subdomain = var.environment_subdomain // e.g. 'www' for prod
}