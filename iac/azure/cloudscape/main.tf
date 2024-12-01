terraform {
  # backend "s3" {
  #   bucket         = "dashg-terraform-state"
  #   key            = "state/terraform.tfstate"
  #   region         = "us-east-1"
  #   encrypt        = true
  #   dynamodb_table = "dashg-terraform-lock"
  # }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.112.0"
    }
  }

  required_version = ">= 1.2.0"
}

# provider "azurerm" {
#   features {
#     resource_group {
#       prevent_deletion_if_contains_resources = false
#     }
#   }
# }

module "organization_on_azure" {
  source = "git::https://github.com/dashg-enterprises/cloud-platform.git//modules/cloudscape/azure?ref=main"
  organization_name = var.organization_name
  environment_name = var.environment_name
}