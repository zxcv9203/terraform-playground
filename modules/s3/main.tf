provider "aws" {
  region = var.region
  access_key = var.access_key
  secret_access_key = var.secret_access_key
}

resource "aws_s3_bucket" "example" {
  provider = aws.s3
  bucket = var.s3_bucket_name
}
