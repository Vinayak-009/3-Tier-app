output "network_name" {
  description = "The name of the created VPC network"
  value       = module.network.network_name
}

output "instance_name" {
  description = "The name of the created VM instance"
  value       = module.instance.instance_name
}

output "sql_instance_name" {
  description = "The name of the Cloud SQL instance"
  value       = module.sql.sql_instance_name
}

output "load_balancer_ip" {
  description = "The external IP of the load balancer"
  value       = module.load_balancer.external_ip
}
