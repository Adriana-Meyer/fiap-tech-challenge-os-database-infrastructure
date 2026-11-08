output "db_endpoint" {
  description = "host:port — copy into os-service's app-secret (SPRING_DATASOURCE_URL)"
  value       = aws_db_instance.main.endpoint
}

output "db_name" {
  value = aws_db_instance.main.db_name
}

output "db_username" {
  value = aws_db_instance.main.username
}

output "db_password" {
  description = "Copy into os-service's app-secret manually — same pattern already used for JWT_SECRET etc."
  value       = random_password.db_master.result
  sensitive   = true
}
