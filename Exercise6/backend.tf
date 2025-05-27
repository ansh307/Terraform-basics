terraform {
  backend "s3" {
    bucket         = "terraform1234567891212"
    key            = "terraform/backend"
    region         = "us-east-1"
  }
}