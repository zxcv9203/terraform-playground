module "s3" {
  source = "../../modules/s3"

  region = var.region
  s3_bucket_name = var.s3_bucket_name

  use_localstack = true
}