output "instance_ip" {
  value = aws_instance.app_instance.private_ip
}

output "rds_endpoint" {
  value = aws_db_instance.app_rds.endpoint
}
