variable "name" {
  description = "Name of the instance"
  type        = string
}

variable "machine_type" {
  description = "Type of the machine"
  type        = string
}

variable "zone" {
  description = "Zone where the instance will be deployed"
  type        = string
}

variable "boot_image" {
  description = "Image for the boot disk"
  type        = string
}

variable "boot_disk_size" {
  description = "Size of the boot disk in GB"
  type        = number
}

variable "boot_disk_type" {
  description = "Type of the boot disk"
  type        = string
}

variable "can_ip_forward" {
  description = "Whether to allow IP forwarding"
  type        = bool
  default     = false
}

variable "deletion_protection" {
  description = "Whether to enable deletion protection"
  type        = bool
  default     = false
}

variable "enable_display" {
  description = "Whether to enable the display"
  type        = bool
  default     = false
}

variable "labels" {
  description = "Labels for the instance"
  type        = map(string)
  default     = {}
}

variable "network_stack_type" {
  description = "Stack type for the network interface"
  type        = string
}

variable "subnetwork" {
  description = "Subnetwork to attach the instance"
  type        = string
}

variable "automatic_restart" {
  description = "Whether to automatically restart the instance"
  type        = bool
  default     = true
}

variable "on_host_maintenance" {
  description = "Maintenance behavior of the instance"
  type        = string
  default     = "MIGRATE"
}

variable "preemptible" {
  description = "Whether the instance is preemptible"
  type        = bool
  default     = false
}

variable "provisioning_model" {
  description = "Provisioning model of the instance"
  type        = string
  default     = "STANDARD"
}

variable "service_account_email" {
  description = "Email of the service account"
  type        = string
}

variable "service_account_scopes" {
  description = "Scopes for the service account"
  type        = list(string)
}

variable "enable_integrity_monitoring" {
  description = "Whether to enable integrity monitoring"
  type        = bool
  default     = true
}

variable "enable_secure_boot" {
  description = "Whether to enable secure boot"
  type        = bool
  default     = false
}

variable "enable_vtpm" {
  description = "Whether to enable vTPM"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags for the instance"
  type        = list(string)
}
