resource "google_apigee_instance" "apigee_instances" {
  for_each = var.apigee_instances

  location                 = each.value.location
  name                     = each.value.name
  org_id                   = each.value.org_id
  consumer_accept_list     = each.value.consumer_accept_list
  deletion_policy          = each.value.deletion_policy
  description              = each.value.description
  disk_encryption_key_name = each.value.disk_encryption_key_name
  display_name             = each.value.display_name
  ip_range                 = each.value.ip_range
  peering_cidr_range       = each.value.peering_cidr_range

  dynamic "access_logging_config" {
    for_each = each.value.access_logging_config != null ? [each.value.access_logging_config] : []
    content {
      enabled = access_logging_config.value.enabled
      filter  = access_logging_config.value.filter
    }
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

