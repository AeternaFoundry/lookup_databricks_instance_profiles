data "databricks_instance_profiles" "instance_profiles_lookup" {
  for_each = var.instance_profiles_lookup


  dynamic "instance_profiles" {
    for_each = each.value.instance_profiles != null ? each.value.instance_profiles : []
    content {
      arn      = instance_profiles.value.arn
      is_meta  = instance_profiles.value.is_meta
      name     = instance_profiles.value.name
      role_arn = instance_profiles.value.role_arn
    }
  }

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

