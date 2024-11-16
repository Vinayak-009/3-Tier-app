variable "name" {
  description = "Name of the instance group manager"
  type        = string
}

variable "project" {
  description = "Google Cloud project ID"
  type        = string
}

variable "zone" {
  description = "Zone where the instance group manager will be deployed"
  type        = string
}

variable "version" {
  description = "Version of the instance group configuration"
  type        = number
  default     = 0
}

variable "list_results_type" {
  description = "Defines the type of results returned for the managed instances"
  type        = string
  default     = "PAGELESS"
}

variable "base_instance_name" {
  description = "Base name for instances created by the group"
  type        = string
}
