output "router_name" {
  description = "Name of the Cloud Router"
  value       = google_compute_router.cloud_router.name
}

output "nat_name" {
  description = "Name of the Cloud NAT gateway"
  value       = google_compute_router_nat.cloud_nat.name
}
