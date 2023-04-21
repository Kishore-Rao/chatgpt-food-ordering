resource "aws_db_instance" "app_rds" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = var.rds_instance_name
  username             = "admin"
  password             = "password123"
  parameter_group_name = "default.mysql5.7"
  subnet_group_name    = "default"
  vpc_security_group_ids = [aws_security_group.app_sg.id]

  tags = {
    Name = "${var.app_name}-rds"
  }
}
