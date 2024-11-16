output "sql_instance_name" {
  description = "Name of the SQL instance."
  value       = google_sql_database_instance.default.name
}

output "sql_instance_connection_name" {
  description = "Connection name for the SQL instance."
  value       = google_sql_database_instance.default.connection_name
}
