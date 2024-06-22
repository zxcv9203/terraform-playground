terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

module "s3" {
  source = "../../../modules/s3"

  shared_credentials_file = var.shared_credentials_file
  region         = var.region
  s3_bucket_name = var.s3_bucket_name

  use_localstack = true
}