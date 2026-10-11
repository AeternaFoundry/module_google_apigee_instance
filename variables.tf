variable "apigee_instances" {
  description = <<EOT
Map of apigee_instances, attributes below
Required:
    - location
    - name
    - org_id
Optional:
    - consumer_accept_list
    - deletion_policy
    - description
    - disk_encryption_key_name
    - display_name
    - ip_range
    - peering_cidr_range
    - access_logging_config (block):
        - enabled (required)
        - filter (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    location                 = string
    name                     = string
    org_id                   = string
    consumer_accept_list     = optional(list(string))
    deletion_policy          = optional(string)
    description              = optional(string)
    disk_encryption_key_name = optional(string)
    display_name             = optional(string)
    ip_range                 = optional(string)
    peering_cidr_range       = optional(string)
    access_logging_config = optional(object({
      enabled = bool
      filter  = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

