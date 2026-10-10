resource "aws_connect_hours_of_operation" "connect_hours_of_operations" {
  for_each = var.connect_hours_of_operations

  instance_id = each.value.instance_id
  name        = each.value.name
  time_zone   = each.value.time_zone
  description = each.value.description
  region      = each.value.region
  tags        = each.value.tags
  tags_all    = each.value.tags_all

  dynamic "config" {
    for_each = each.value.config
    content {
      day = config.value.day
      end_time {
        hours   = config.value.end_time.hours
        minutes = config.value.end_time.minutes
      }
      start_time {
        hours   = config.value.start_time.hours
        minutes = config.value.start_time.minutes
      }
    }
  }
}

