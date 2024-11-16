variable "sql_instance_name" {
  description = "Name of the Cloud SQL instance."
  type        = string
}

variable "project_id" {
  description = "Project ID where the resources will be created."
  type        = string
}

variable "region" {
  description = "Region for the SQL instance."
  type        = string
}

variable "database_version" {
  description = "Database version for the SQL instance."
  type        = string
  default     = "MYSQL_8_0"
}

variable "sql_tier" {
  description = "Machine type tier for the SQL instance."
  type        = string
}

variable "sql_disk_autoresize" {
  description = "Enable or disable disk autoresize."
  type        = bool
}

variable "sql_disk_autoresize_limit" {
  description = "Disk size limit in GB."
  type        = number
}

variable "sql_disk_size" {
  description = "Initial disk size in GB."
  type        = number
}

variable "sql_disk_type" {
  description = "Disk type for the SQL instance."
  type        = string
}

variable "sql_availability_type" {
  description = "Availability type for the SQL instance (ZONAL or REGIONAL)."
  type        = string
}

variable "sql_binary_log_enabled" {
  description = "Enable binary logging."
  type        = bool
}

variable "sql_backup_enabled" {
  description = "Enable backups for the SQL instance."
  type        = bool
}

variable "sql_pitr_enabled" {
  description = "Enable point-in-time recovery."
  type        = bool
}

variable "sql_ipv4_enabled" {
  description = "Enable IPv4 access."
  type        = bool
}

variable "private_network" {
  description = "Private VPC network for the SQL instance."
  type        = string
}

variable "authorized_network" {
  description = "IP address or range authorized to access the SQL instance."
  type        = string
}
