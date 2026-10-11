variable "instance_profiles_lookup" {
  description = <<EOT
Map of instance_profiles_lookup, attributes below
Optional:
    - instance_profiles (block):
        - arn (optional)
        - is_meta (optional)
        - name (optional)
        - role_arn (optional)
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    instance_profiles = optional(list(object({
      arn      = optional(string)
      is_meta  = optional(bool)
      name     = optional(string)
      role_arn = optional(string)
    })))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

