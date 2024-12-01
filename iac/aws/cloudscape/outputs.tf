# outputs.tf

output "vpc_id" {
  value = module.environment_on_aws.vpc_id
}

output "private_subnet_ids" {
  value = module.environment_on_aws.private_subnet_ids
}

output "public_subnet_ids" {
  value = module.environment_on_aws.public_subnet_ids
}

output "pool_id" {
  value = module.environment_on_aws.pool_id
}

output "pool_client_id" {
  value = module.environment_on_aws.pool_client_id
}

output "eks_cluster_name" {
  value = module.environment_on_aws.eks_cluster_name
}

output "apigw_id" {
  value = module.environment_on_aws.apigw_id
}

output "apigw_root_resource_id" {
  value = module.environment_on_aws.apigw_root_resource_id
}