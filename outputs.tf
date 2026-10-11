output "instance_profiles_lookup_id" {
  description = "Map of id values across all instance_profiles_lookup, keyed the same as var.instance_profiles_lookup except keys with no id are omitted"
  value       = { for k, v in data.databricks_instance_profiles.instance_profiles_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "instance_profiles_lookup_instance_profiles" {
  description = "Map of instance_profiles values across all instance_profiles_lookup, keyed the same as var.instance_profiles_lookup except keys with no instance_profiles are omitted"
  value       = { for k, v in data.databricks_instance_profiles.instance_profiles_lookup : k => v.instance_profiles if v.instance_profiles != null && length(v.instance_profiles) > 0 }
}
output "instance_profiles_lookup_provider_config" {
  description = "Map of provider_config values across all instance_profiles_lookup, keyed the same as var.instance_profiles_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_instance_profiles.instance_profiles_lookup : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}

