variable "database_key_stores" {
  description = <<EOT
Map of database_key_stores, attributes below
Required:
    - compartment_id
    - display_name
    - type_details (block):
        - admin_username (required)
        - connection_ips (required)
        - secret_id (required)
        - type (required)
        - vault_id (required)
Optional:
    - confirm_details_trigger
    - defined_tags
    - freeform_tags
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id          = string
    display_name            = string
    confirm_details_trigger = optional(number)
    defined_tags            = optional(map(string))
    freeform_tags           = optional(map(string))
    type_details = object({
      admin_username = string
      connection_ips = set(string)
      secret_id      = string
      type           = string
      vault_id       = string
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.database_key_stores : (
        contains([for v in ["ORACLE_KEY_VAULT"] : lower(v)], lower(v.type_details.type))
      )
    ])
    error_message = "must be one of: \"ORACLE_KEY_VAULT\""
  }
}

