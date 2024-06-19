provider "aws" {
  alias = "s3"
  region = var.region

  shared_credentials_files = [var.shared_credentials_file]
  profile = var.use_localstack ? "test" : "default"

  endpoints {
    s3 = var.use_localstack ? "http://127.0.0.1:4566" : null
  }

  skip_credentials_validation = var.use_localstack ? true : false
  skip_metadata_api_check = var.use_localstack ? true : false
  skip_requesting_account_id = var.use_localstack ? true : false

}

resource "aws_s3_bucket" "this" {
  provider = aws.s3
  bucket = var.s3_bucket_name

  force_destroy = var.use_localstack ? true : false
}
