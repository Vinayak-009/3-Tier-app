# Health Check Configuration
health_check_name       = "mt-check"
check_interval_sec      = 10
healthy_threshold       = 2
timeout_sec             = 10
unhealthy_threshold     = 2
tcp_health_check_port   = 8080
tcp_proxy_header        = "NONE"

# Instance Group Configuration
instance_group_name = "multi-tier-group"

# Named Ports Configuration
named_ports = [
  { name = "http", port = 80 },
  { name = "https", port = 443 },
  { name = "http-alt", port = 8080 }
]

# Backend Service Configuration
backend_service_name        = "backend-conf"
backend_protocol            = "HTTP"
backend_timeout_sec         = 40
backend_port_name           = "http"
backend_load_balancing_scheme = "EXTERNAL_MANAGED"
backend_balancing_mode      = "UTILIZATION"
backend_capacity_scaler     = 1
backend_max_utilization     = 0.8
connection_draining_timeout_sec = 300

# URL Map and Target HTTP Proxy Configuration
url_map_name           = "mt-lb"
target_http_proxy_name = "mt-lb-target-proxy"

# Forwarding Rule Configuration
forwarding_rule_name                 = "frontend-ip"
ip_protocol                          = "TCP"
forwarding_rule_load_balancing_scheme = "EXTERNAL_MANAGED"
network_tier                         = "PREMIUM"
forwarding_rule_port_range           = "8080"

# General Configuration
project_id = "django-test-441711"
zone       = "us-central1-a"
