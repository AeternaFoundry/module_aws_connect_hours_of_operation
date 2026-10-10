variable "connect_hours_of_operations" {
  description = <<EOT
Map of connect_hours_of_operations, attributes below
Required:
    - instance_id
    - name
    - time_zone
    - config (block):
        - day (required)
        - end_time (required, block):
            - hours (required)
            - minutes (required)
        - start_time (required, block):
            - hours (required)
            - minutes (required)
Optional:
    - description
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    instance_id = string
    name        = string
    time_zone   = string
    description = optional(string)
    region      = optional(string)
    tags        = optional(map(string))
    tags_all    = optional(map(string))
    config = list(object({
      day = string
      end_time = object({
        hours   = number
        minutes = number
      })
      start_time = object({
        hours   = number
        minutes = number
      })
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.connect_hours_of_operations : (
        length(v.config) >= 1
      )
    ])
    error_message = "Each config list must contain at least 1 items"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

