output "emr_block_public_access_configurations_id" {
  description = "Map of id values across all emr_block_public_access_configurations, keyed the same as var.emr_block_public_access_configurations"
  value       = { for k, v in aws_emr_block_public_access_configuration.emr_block_public_access_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "emr_block_public_access_configurations_block_public_security_group_rules" {
  description = "Map of block_public_security_group_rules values across all emr_block_public_access_configurations, keyed the same as var.emr_block_public_access_configurations"
  value       = { for k, v in aws_emr_block_public_access_configuration.emr_block_public_access_configurations : k => v.block_public_security_group_rules if v.block_public_security_group_rules != null }
}
output "emr_block_public_access_configurations_permitted_public_security_group_rule_range" {
  description = "Map of permitted_public_security_group_rule_range values across all emr_block_public_access_configurations, keyed the same as var.emr_block_public_access_configurations"
  value       = { for k, v in aws_emr_block_public_access_configuration.emr_block_public_access_configurations : k => v.permitted_public_security_group_rule_range if v.permitted_public_security_group_rule_range != null && length(v.permitted_public_security_group_rule_range) > 0 }
}
output "emr_block_public_access_configurations_region" {
  description = "Map of region values across all emr_block_public_access_configurations, keyed the same as var.emr_block_public_access_configurations"
  value       = { for k, v in aws_emr_block_public_access_configuration.emr_block_public_access_configurations : k => v.region if v.region != null && length(v.region) > 0 }
}

