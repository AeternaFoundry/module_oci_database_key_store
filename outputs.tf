output "database_key_stores_id" {
  description = "Map of id values across all database_key_stores, keyed the same as var.database_key_stores except keys with no id are omitted"
  value       = { for k, v in oci_database_key_store.database_key_stores : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_key_stores_associated_databases" {
  description = "Map of associated_databases values across all database_key_stores, keyed the same as var.database_key_stores except keys with no associated_databases are omitted"
  value       = { for k, v in oci_database_key_store.database_key_stores : k => v.associated_databases if v.associated_databases != null && length(v.associated_databases) > 0 }
}
output "database_key_stores_associated_long_term_backup_count" {
  description = "Map of associated_long_term_backup_count values across all database_key_stores, keyed the same as var.database_key_stores except keys with no associated_long_term_backup_count are omitted"
  value       = { for k, v in oci_database_key_store.database_key_stores : k => v.associated_long_term_backup_count if v.associated_long_term_backup_count != null }
}
output "database_key_stores_associated_long_term_backups" {
  description = "Map of associated_long_term_backups values across all database_key_stores, keyed the same as var.database_key_stores except keys with no associated_long_term_backups are omitted"
  value       = { for k, v in oci_database_key_store.database_key_stores : k => v.associated_long_term_backups if v.associated_long_term_backups != null && length(v.associated_long_term_backups) > 0 }
}
output "database_key_stores_compartment_id" {
  description = "Map of compartment_id values across all database_key_stores, keyed the same as var.database_key_stores except keys with no compartment_id are omitted"
  value       = { for k, v in oci_database_key_store.database_key_stores : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "database_key_stores_confirm_details_trigger" {
  description = "Map of confirm_details_trigger values across all database_key_stores, keyed the same as var.database_key_stores except keys with no confirm_details_trigger are omitted"
  value       = { for k, v in oci_database_key_store.database_key_stores : k => v.confirm_details_trigger if v.confirm_details_trigger != null }
}
output "database_key_stores_defined_tags" {
  description = "Map of defined_tags values across all database_key_stores, keyed the same as var.database_key_stores except keys with no defined_tags are omitted"
  value       = { for k, v in oci_database_key_store.database_key_stores : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "database_key_stores_display_name" {
  description = "Map of display_name values across all database_key_stores, keyed the same as var.database_key_stores except keys with no display_name are omitted"
  value       = { for k, v in oci_database_key_store.database_key_stores : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "database_key_stores_freeform_tags" {
  description = "Map of freeform_tags values across all database_key_stores, keyed the same as var.database_key_stores except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_database_key_store.database_key_stores : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "database_key_stores_lifecycle_details" {
  description = "Map of lifecycle_details values across all database_key_stores, keyed the same as var.database_key_stores except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_database_key_store.database_key_stores : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "database_key_stores_state" {
  description = "Map of state values across all database_key_stores, keyed the same as var.database_key_stores except keys with no state are omitted"
  value       = { for k, v in oci_database_key_store.database_key_stores : k => v.state if v.state != null && length(v.state) > 0 }
}
output "database_key_stores_system_tags" {
  description = "Map of system_tags values across all database_key_stores, keyed the same as var.database_key_stores except keys with no system_tags are omitted"
  value       = { for k, v in oci_database_key_store.database_key_stores : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "database_key_stores_time_created" {
  description = "Map of time_created values across all database_key_stores, keyed the same as var.database_key_stores except keys with no time_created are omitted"
  value       = { for k, v in oci_database_key_store.database_key_stores : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "database_key_stores_type_details" {
  description = "Map of type_details values across all database_key_stores, keyed the same as var.database_key_stores except keys with no type_details are omitted"
  value       = { for k, v in oci_database_key_store.database_key_stores : k => one(v.type_details) if v.type_details != null && length(v.type_details) > 0 }
}

