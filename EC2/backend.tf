terraform {
  backend "s3" {
    bucket = "backendec2" # Replace with your actual S3 bucket name
    key    = "EC2/terraform.tfstate"
  }
}
