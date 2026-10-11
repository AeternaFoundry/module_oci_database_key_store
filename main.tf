resource "oci_database_key_store" "database_key_stores" {
  for_each = var.database_key_stores

  compartment_id          = each.value.compartment_id
  display_name            = each.value.display_name
  confirm_details_trigger = each.value.confirm_details_trigger
  defined_tags            = each.value.defined_tags
  freeform_tags           = each.value.freeform_tags

  type_details {
    admin_username = each.value.type_details.admin_username
    connection_ips = each.value.type_details.connection_ips
    secret_id      = each.value.type_details.secret_id
    type           = each.value.type_details.type
    vault_id       = each.value.type_details.vault_id
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

