resource "aws_instance" "app_instance" {
  ami           = "ami-0c768662cc797cd75"
  instance_type = var.instance_type
  subnet_id     = aws_subnet.private_subnet_1.id
  vpc_security_group_ids = [aws_security_group.app_sg.id]

  tags = {
    Name = "${var.app_name}-instance"
  }

  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo amazon-linux-extras install java-openjdk11 -y
              EOF
}

