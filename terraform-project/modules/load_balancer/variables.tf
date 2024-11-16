variable "project_id" {
  description = "Google Cloud project ID"
  type        = string
}

variable "zone" {
  description = "Zone where resources are deployed"
  type        = string
}

variable "health_check_name" {
  description = "Name of the health check"
  type        = string
}

variable "check_interval_sec" {
  description = "Interval in seconds between health checks"
  type        = number
  default     = 10
}

variable "healthy_threshold" {
  description = "Number of successful health checks before marking the instance as healthy"
  type        = number
  default     = 2
}

variable "timeout_sec" {
  description = "Timeout in seconds for health check responses"
  type        = number
  default     = 10
}

variable "unhealthy_threshold" {
  description = "Number of failed health checks before marking the instance as unhealthy"
  type        = number
  default     = 2
}

variable "tcp_health_check_port" {
  description = "TCP port for health check"
  type        = number
  default     = 8080
}

variable "tcp_proxy_header" {
  description = "Proxy header for TCP health check"
  type        = string
  default     = "NONE"
}

variable "instance_group_name" {
  description = "Name of the instance group"
  type        = string
}

variable "named_ports" {
  description = "Named ports for the instance group"
  type = list(object({
    name = string
    port = number
  }))
  default = [
    { name = "http", port = 80 },
    { name = "https", port = 443 },
    { name = "http-alt", port = 8080 }
  ]
}

variable "backend_service_name" {
  description = "Name of the backend service"
  type        = string
}

variable "backend_protocol" {
  description = "Protocol used by the backend service"
  type        = string
  default     = "HTTP"
}

variable "backend_timeout_sec" {
  description = "Timeout in seconds for backend connections"
  type        = number
  default     = 40
}

variable "backend_port_name" {
  description = "Port name for the backend service"
  type        = string
  default     = "http"
}

variable "backend_load_balancing_scheme" {
  description = "Load balancing scheme for the backend service"
  type        = string
  default     = "EXTERNAL_MANAGED"
}

variable "backend_balancing_mode" {
  description = "Balancing mode for the backend service"
  type        = string
  default     = "UTILIZATION"
}

variable "backend_capacity_scaler" {
  description = "Capacity scaler for the backend"
  type        = number
  default     = 1
}

variable "backend_max_utilization" {
  description = "Maximum utilization for the backend"
  type        = number
  default     = 0.8
}

variable "connection_draining_timeout_sec" {
  description = "Timeout in seconds for connection draining"
  type        = number
  default     = 300
}

variable "url_map_name" {
  description = "Name of the URL map"
  type        = string
}

variable "target_http_proxy_name" {
  description = "Name of the target HTTP proxy"
  type        = string
}

variable "forwarding_rule_name" {
  description = "Name of the forwarding rule"
  type        = string
}

variable "ip_protocol" {
  description = "IP protocol for the forwarding rule"
  type        = string
  default     = "TCP"
}

variable "forwarding_rule_load_balancing_scheme" {
  description = "Load balancing scheme for the forwarding rule"
  type        = string
  default     = "EXTERNAL_MANAGED"
}

variable "network_tier" {
  description = "Network tier for the forwarding rule"
  type        = string
  default     = "PREMIUM"
}

variable "forwarding_rule_port_range" {
  description = "Port range for the forwarding rule"
  type        = string
  default     = "8080"
}
