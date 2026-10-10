variable "emr_block_public_access_configurations" {
  description = <<EOT
Map of emr_block_public_access_configurations, attributes below
Required:
    - block_public_security_group_rules
Optional:
    - region
    - permitted_public_security_group_rule_range (block):
        - max_range (required)
        - min_range (required)
EOT

  type = map(object({
    block_public_security_group_rules = bool
    region                            = optional(string)
    permitted_public_security_group_rule_range = optional(list(object({
      max_range = number
      min_range = number
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.emr_block_public_access_configurations : (
        v.permitted_public_security_group_rule_range == null || alltrue([for item in v.permitted_public_security_group_rule_range : (item.max_range >= 1 && item.max_range <= 65535)])
      )
    ])
    error_message = "must be a valid port number (1-65535)"
  }
  validation {
    condition = alltrue([
      for k, v in var.emr_block_public_access_configurations : (
        v.permitted_public_security_group_rule_range == null || alltrue([for item in v.permitted_public_security_group_rule_range : (item.min_range >= 1 && item.min_range <= 65535)])
      )
    ])
    error_message = "must be a valid port number (1-65535)"
  }
}

