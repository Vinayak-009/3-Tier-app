resource "google_sql_database_instance" "default" {
  name             = var.sql_instance_name
  project          = var.project_id
  region           = var.region
  database_version = var.database_version

  settings {
    tier                  = var.sql_tier
    disk_autoresize       = var.sql_disk_autoresize
    disk_autoresize_limit = var.sql_disk_autoresize_limit
    disk_size             = var.sql_disk_size
    disk_type             = var.sql_disk_type
    availability_type     = var.sql_availability_type

    backup_configuration {
      binary_log_enabled               = var.sql_binary_log_enabled
      enabled                          = var.sql_backup_enabled
      point_in_time_recovery_enabled   = var.sql_pitr_enabled
    }

    ip_configuration {
      ipv4_enabled = var.sql_ipv4_enabled
      private_network = var.private_network
      authorized_networks {
        name  = "pvt-ip"
        value = var.authorized_network
      }
    }
  }
}
