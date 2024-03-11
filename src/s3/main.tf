resource "aws_s3_bucket" "backendec2" {
  bucket = "backendec2"
  force_destroy = true
}

resource "aws_s3_bucket_versioning" "versioning_backendec2" {
  bucket = aws_s3_bucket.backendec2.id
  versioning_configuration {
    status = "Enabled"
    
  }
}
