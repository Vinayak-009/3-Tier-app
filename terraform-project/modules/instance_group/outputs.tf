output "instance_group_name" {
  value = google_compute_instance_group_manager.instance_group.name
}

output "instance_group_zone" {
  value = google_compute_instance_group_manager.instance_group.zone
}

output "instance_group_project" {
  value = google_compute_instance_group_manager.instance_group.project
}
