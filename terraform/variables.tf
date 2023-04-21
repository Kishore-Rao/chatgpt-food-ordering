variable "app_name" {
  type        = string
  description = "Name of the application"
}

variable "ami_id" {
  type        = string
  description = "ID of the AMI to use for the EC2 instance"
  default     = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI (HVM), SSD Volume Type
}

variable "instance_type" {
  type        = string
  description = "Instance type for the EC2 instance"
  default     = "t2.micro"
}

variable "rds_instance_name" {
  type        = string
  description = "Name for the RDS instance"
}
