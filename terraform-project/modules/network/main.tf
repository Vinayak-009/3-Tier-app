resource "google_compute_router" "cloud_router" {
  name    = var.router_name
  project = var.project_id
  network = var.network
  region  = var.region
}

resource "google_compute_router_nat" "cloud_nat" {
  name       = var.nat_name
  project    = var.project_id
  region     = var.region
  router     = google_compute_router.cloud_router.name

  nat_ip_allocate_option           = var.nat_ip_allocate_option
  source_subnetwork_ip_ranges_to_nat = var.source_subnetwork_ip_ranges_to_nat
}
