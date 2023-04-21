resource "aws_security_group" "app_sg" {
  name_prefix = "${var.app_name}-sg"
  vpc_id      = aws_vpc.vpc.id

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
