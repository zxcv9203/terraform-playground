module "s3" {
  source = "../../modules/s3"

  region = var.region
  access_key = var.access_key
  secret_access_key = var.secret_access_key
  s3_bucket_name = var.s3_bukcket_name
}