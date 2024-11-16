output "health_check_name" {
  description = "The name of the health check"
  value       = google_compute_health_check.mt_check.name
}

output "backend_service_name" {
  description = "The name of the backend service"
  value       = google_compute_backend_service.backend_conf.name
}

output "forwarding_rule_ip" {
  description = "The external IP of the forwarding rule"
  value       = google_compute_forwarding_rule.frontend_ip.self_link
}
