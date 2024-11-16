output "instance_name" {
  value = google_compute_instance.vm_instance.name
}

output "instance_zone" {
  value = google_compute_instance.vm_instance.zone
}

output "instance_tags" {
  value = google_compute_instance.vm_instance.tags
}