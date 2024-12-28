terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.59.0"
    }
  }

  required_version = ">= 1.2.0"
}

locals {
  organization_name = "Put your git org name here"
  domain_name = "Put your domain here. example: mysite.com"
  bounded_contexts = []
}

module "cloudscape_on_aws" {
  source = "git::https://github.com/dashg-enterprises/cloud-platform.git//modules/cloudscape/aws?ref=main"
  organization_name = local.organization_name
  domain_name = local.domain_name
  bounded_contexts = local.bounded_contexts
  environment_name = var.environment_name
  environment_subdomain = var.environment_subdomain // e.g. 'www' for prod
  with_eks = true
  with_api_gw = true
  with_nat_gw = true
}