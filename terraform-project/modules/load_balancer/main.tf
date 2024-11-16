resource "google_compute_health_check" "mt_check" {
  name               = var.health_check_name
  project            = var.project_id
  check_interval_sec = var.check_interval_sec
  healthy_threshold  = var.healthy_threshold
  timeout_sec        = var.timeout_sec
  unhealthy_threshold = var.unhealthy_threshold

  tcp_health_check {
    port         = var.tcp_health_check_port
    proxy_header = var.tcp_proxy_header
  }
}

resource "google_compute_instance_group" "multi_tier_group" {
  name    = var.instance_group_name
  project = var.project_id
  zone    = var.zone
}

resource "google_compute_instance_group_named_ports" "multi_tier_group" {
  name          = var.instance_group_name
  project       = var.project_id
  zone          = var.zone
  instance_group = google_compute_instance_group.multi_tier_group.name

  dynamic "named_ports" {
    for_each = var.named_ports
    content {
      name = named_ports.value.name
      port = named_ports.value.port
    }
  }
}

resource "google_compute_backend_service" "backend_conf" {
  name                  = var.backend_service_name
  project               = var.project_id
  protocol              = var.backend_protocol
  timeout_sec           = var.backend_timeout_sec
  port_name             = var.backend_port_name
  load_balancing_scheme = var.backend_load_balancing_scheme
  health_checks         = [google_compute_health_check.mt_check.id]

  backends {
    group           = google_compute_instance_group.multi_tier_group.id
    balancing_mode  = var.backend_balancing_mode
    capacity_scaler = var.backend_capacity_scaler
    max_utilization = var.backend_max_utilization
  }

  connection_draining {
    draining_timeout_sec = var.connection_draining_timeout_sec
  }
}

resource "google_compute_url_map" "mt_lb" {
  name           = var.url_map_name
  project        = var.project_id
  default_service = google_compute_backend_service.backend_conf.id
}

resource "google_compute_target_http_proxy" "mt_lb_target_proxy" {
  name    = var.target_http_proxy_name
  project = var.project_id
  url_map = google_compute_url_map.mt_lb.id
}

resource "google_compute_forwarding_rule" "frontend_ip" {
  name                  = var.forwarding_rule_name
  project               = var.project_id
  ip_protocol           = var.ip_protocol
  load_balancing_scheme = var.forwarding_rule_load_balancing_scheme
  network_tier          = var.network_tier
  port_range            = var.forwarding_rule_port_range
  target                = google_compute_target_http_proxy.mt_lb_target_proxy.id
}
