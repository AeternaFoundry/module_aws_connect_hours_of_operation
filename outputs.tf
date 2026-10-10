output "connect_hours_of_operations_id" {
  description = "Map of id values across all connect_hours_of_operations, keyed the same as var.connect_hours_of_operations"
  value       = { for k, v in aws_connect_hours_of_operation.connect_hours_of_operations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "connect_hours_of_operations_arn" {
  description = "Map of arn values across all connect_hours_of_operations, keyed the same as var.connect_hours_of_operations"
  value       = { for k, v in aws_connect_hours_of_operation.connect_hours_of_operations : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "connect_hours_of_operations_config" {
  description = "Map of config values across all connect_hours_of_operations, keyed the same as var.connect_hours_of_operations"
  value       = { for k, v in aws_connect_hours_of_operation.connect_hours_of_operations : k => v.config if v.config != null && length(v.config) > 0 }
}
output "connect_hours_of_operations_description" {
  description = "Map of description values across all connect_hours_of_operations, keyed the same as var.connect_hours_of_operations"
  value       = { for k, v in aws_connect_hours_of_operation.connect_hours_of_operations : k => v.description if v.description != null && length(v.description) > 0 }
}
output "connect_hours_of_operations_hours_of_operation_id" {
  description = "Map of hours_of_operation_id values across all connect_hours_of_operations, keyed the same as var.connect_hours_of_operations"
  value       = { for k, v in aws_connect_hours_of_operation.connect_hours_of_operations : k => v.hours_of_operation_id if v.hours_of_operation_id != null && length(v.hours_of_operation_id) > 0 }
}
output "connect_hours_of_operations_instance_id" {
  description = "Map of instance_id values across all connect_hours_of_operations, keyed the same as var.connect_hours_of_operations"
  value       = { for k, v in aws_connect_hours_of_operation.connect_hours_of_operations : k => v.instance_id if v.instance_id != null && length(v.instance_id) > 0 }
}
output "connect_hours_of_operations_name" {
  description = "Map of name values across all connect_hours_of_operations, keyed the same as var.connect_hours_of_operations"
  value       = { for k, v in aws_connect_hours_of_operation.connect_hours_of_operations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "connect_hours_of_operations_region" {
  description = "Map of region values across all connect_hours_of_operations, keyed the same as var.connect_hours_of_operations"
  value       = { for k, v in aws_connect_hours_of_operation.connect_hours_of_operations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "connect_hours_of_operations_tags" {
  description = "Map of tags values across all connect_hours_of_operations, keyed the same as var.connect_hours_of_operations"
  value       = { for k, v in aws_connect_hours_of_operation.connect_hours_of_operations : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "connect_hours_of_operations_tags_all" {
  description = "Map of tags_all values across all connect_hours_of_operations, keyed the same as var.connect_hours_of_operations"
  value       = { for k, v in aws_connect_hours_of_operation.connect_hours_of_operations : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "connect_hours_of_operations_time_zone" {
  description = "Map of time_zone values across all connect_hours_of_operations, keyed the same as var.connect_hours_of_operations"
  value       = { for k, v in aws_connect_hours_of_operation.connect_hours_of_operations : k => v.time_zone if v.time_zone != null && length(v.time_zone) > 0 }
}

