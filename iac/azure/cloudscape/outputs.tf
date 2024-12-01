output "resource_group" {
  value = module.organization_on_azure.org_resource_group
}

output "eventhub_namespace_name" {
  value = module.organization_on_azure.org_eventhub_namespace.name
}

output "servicebus_namespace_id" {
  value = module.organization_on_azure.org_servicebus_namespace.id
}

output "cosmosdb_account_name" {
  value = module.organization_on_azure.org_cosmosdb_account.name
}