terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket"
    key            = "terraform/my-app.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-state-lock"
  }
}
