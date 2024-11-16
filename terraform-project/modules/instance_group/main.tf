resource "google_compute_instance_group_manager" "instance_group" {
  name                      = var.name
  project                   = var.project
  zone                      = var.zone
  version                   = var.version
  list_managed_instances_results = var.list_results_type

  base_instance_name = var.base_instance_name
}
