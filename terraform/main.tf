provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "${var.app_name}-vpc"
  }
}

resource "aws_subnet" "private_subnet_1" {
  cidr_block = "10.0.1.0/24"
  vpc_id     = aws_vpc.vpc.id
  availability_zone = "us-east-1a"

  tags = {
    Name = "${var.app_name}-private-subnet-1"
  }
}

resource "aws_subnet" "private_subnet_2" {
  cidr_block = "10.0.2.0/24"
  vpc_id     = aws_vpc.vpc.id
  availability_zone = "us-east-1b"

  tags = {
    Name = "${var.app_name}-private-subnet-2"
  }
}
