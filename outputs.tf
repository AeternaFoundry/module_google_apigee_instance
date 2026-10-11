output "apigee_instances_id" {
  description = "Map of id values across all apigee_instances, keyed the same as var.apigee_instances except keys with no id are omitted"
  value       = { for k, v in google_apigee_instance.apigee_instances : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apigee_instances_access_logging_config" {
  description = "Map of access_logging_config values across all apigee_instances, keyed the same as var.apigee_instances except keys with no access_logging_config are omitted"
  value       = { for k, v in google_apigee_instance.apigee_instances : k => one(v.access_logging_config) if v.access_logging_config != null && length(v.access_logging_config) > 0 }
}
output "apigee_instances_consumer_accept_list" {
  description = "Map of consumer_accept_list values across all apigee_instances, keyed the same as var.apigee_instances except keys with no consumer_accept_list are omitted"
  value       = { for k, v in google_apigee_instance.apigee_instances : k => v.consumer_accept_list if v.consumer_accept_list != null && length(v.consumer_accept_list) > 0 }
}
output "apigee_instances_deletion_policy" {
  description = "Map of deletion_policy values across all apigee_instances, keyed the same as var.apigee_instances except keys with no deletion_policy are omitted"
  value       = { for k, v in google_apigee_instance.apigee_instances : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "apigee_instances_description" {
  description = "Map of description values across all apigee_instances, keyed the same as var.apigee_instances except keys with no description are omitted"
  value       = { for k, v in google_apigee_instance.apigee_instances : k => v.description if v.description != null && length(v.description) > 0 }
}
output "apigee_instances_disk_encryption_key_name" {
  description = "Map of disk_encryption_key_name values across all apigee_instances, keyed the same as var.apigee_instances except keys with no disk_encryption_key_name are omitted"
  value       = { for k, v in google_apigee_instance.apigee_instances : k => v.disk_encryption_key_name if v.disk_encryption_key_name != null && length(v.disk_encryption_key_name) > 0 }
}
output "apigee_instances_display_name" {
  description = "Map of display_name values across all apigee_instances, keyed the same as var.apigee_instances except keys with no display_name are omitted"
  value       = { for k, v in google_apigee_instance.apigee_instances : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "apigee_instances_host" {
  description = "Map of host values across all apigee_instances, keyed the same as var.apigee_instances except keys with no host are omitted"
  value       = { for k, v in google_apigee_instance.apigee_instances : k => v.host if v.host != null && length(v.host) > 0 }
}
output "apigee_instances_ip_range" {
  description = "Map of ip_range values across all apigee_instances, keyed the same as var.apigee_instances except keys with no ip_range are omitted"
  value       = { for k, v in google_apigee_instance.apigee_instances : k => v.ip_range if v.ip_range != null && length(v.ip_range) > 0 }
}
output "apigee_instances_location" {
  description = "Map of location values across all apigee_instances, keyed the same as var.apigee_instances except keys with no location are omitted"
  value       = { for k, v in google_apigee_instance.apigee_instances : k => v.location if v.location != null && length(v.location) > 0 }
}
output "apigee_instances_name" {
  description = "Map of name values across all apigee_instances, keyed the same as var.apigee_instances except keys with no name are omitted"
  value       = { for k, v in google_apigee_instance.apigee_instances : k => v.name if v.name != null && length(v.name) > 0 }
}
output "apigee_instances_org_id" {
  description = "Map of org_id values across all apigee_instances, keyed the same as var.apigee_instances except keys with no org_id are omitted"
  value       = { for k, v in google_apigee_instance.apigee_instances : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "apigee_instances_peering_cidr_range" {
  description = "Map of peering_cidr_range values across all apigee_instances, keyed the same as var.apigee_instances except keys with no peering_cidr_range are omitted"
  value       = { for k, v in google_apigee_instance.apigee_instances : k => v.peering_cidr_range if v.peering_cidr_range != null && length(v.peering_cidr_range) > 0 }
}
output "apigee_instances_port" {
  description = "Map of port values across all apigee_instances, keyed the same as var.apigee_instances except keys with no port are omitted"
  value       = { for k, v in google_apigee_instance.apigee_instances : k => v.port if v.port != null && length(v.port) > 0 }
}
output "apigee_instances_service_attachment" {
  description = "Map of service_attachment values across all apigee_instances, keyed the same as var.apigee_instances except keys with no service_attachment are omitted"
  value       = { for k, v in google_apigee_instance.apigee_instances : k => v.service_attachment if v.service_attachment != null && length(v.service_attachment) > 0 }
}

