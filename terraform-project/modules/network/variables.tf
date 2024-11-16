variable "router_name" {
  description = "Name of the Cloud Router"
  type        = string
}

variable "nat_name" {
  description = "Name of the Cloud NAT gateway"
  type        = string
}

variable "project_id" {
  description = "Google Cloud project ID"
  type        = string
}

variable "network" {
  description = "VPC network name"
  type        = string
}

variable "region" {
  description = "Region where resources will be created"
  type        = string
}

variable "nat_ip_allocate_option" {
  description = "IP allocation option for Cloud NAT"
  type        = string
  default     = "AUTO_ONLY"
}

variable "source_subnetwork_ip_ranges_to_nat" {
  description = "Specifies which IP ranges are NATed"
  type        = string
  default     = "ALL_SUBNETWORKS_ALL_IP_RANGES"
}
