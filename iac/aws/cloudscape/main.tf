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
  with_eks = false
  with_api_gw = false
  with_nat_gw = true
  server_bounded_contexts = []
  serverless_bounded_contexts = []
}

module "cloudscape_on_aws" {
  source = "git::https://github.com/dashg-enterprises/cloud-platform.git//modules/cloudscape/aws?ref=main"
  organization_name = local.organization_name
  domain_name = local.domain_name
  environment_name = var.environment_name
  environment_subdomain = var.environment_subdomain // e.g. 'www' for prod
  with_eks = local.with_eks
  with_api_gw = local.with_api_gw
  with_nat_gw = local.with_nat_gw
  serverless_bounded_contexts = local.serverless_bounded_contexts
  server_bounded_contexts = local.server_bounded_contexts
}