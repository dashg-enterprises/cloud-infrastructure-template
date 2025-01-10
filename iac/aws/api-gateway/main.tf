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
  server_bounded_contexts = [{
    name = "ExampleContext"
    openapi_spec = null
    load_balancer = {
      arn = ""
      dns_name = ""
    }
  }]
  serverless_bounded_contexts = [{
    name = "ExampleContext"
    openapi_spec = null
    load_balancer = {
      arn = ""
      dns_name = ""
    }
  }]
}

module "api_gw_on_aws" {
  source = "git::https://github.com/dashg-enterprises/cloud-platform.git//modules/api-gateway/aws?ref=main"
  organization_name = local.organization_name
  domain_name = local.domain_name
  environment_name = var.environment_name
  environment_subdomain = var.environment_subdomain
  server_bounded_contexts = local.server_bounded_contexts
  serverless_bounded_contexts = local.serverless_bounded_contexts
}